import 'dart:io';

const tdApiDir = 'lib/src/tdlib/tdapi';
final tdApiFile = File('$tdApiDir/tdapi.dart');
final functionsDir = Directory("$tdApiDir/functions");
final objectsDir = Directory("$tdApiDir/objects");
const builtInTypes = [
  'int',
  'int32',
  'int53',
  'int64',
  'long',
  'double',
  'string',
  'bytes',
  'Bool'
];
const dartTypes = ['int', 'double', 'String', 'bool'];

// regex patterns
final sectionRegx = RegExp(r'---(\w+)---');
final classRegx = RegExp(r'^//@class (\w+) @description (.*)');
final docsRegx =
    RegExp(r'//((-)|@)(description)?([\w -.,:;={}\?\/\(\)"]+)(@?)(.*)?');
final argsRegx = RegExp(r'(\w+):([\w<>]+)');
final fieldsRegx = RegExp(r'^(\w+) (.*)?= (\w+);$');

final List<TlObject> _objects = [];

class DartTdDocumentationGenerator {
  String schemePath = 'generator/scheme/td_api.tl';
  int skipLines = 13;
  String mainPart = 'part of \'../tdapi.dart\';';

  /// Main generating function
  void generate() {
    // read td_api scheme
    var schemeData = readFile(schemePath);

    // skip built-in types
    schemeData = schemeData.sublist(skipLines);

    // extract data
    dispatchSchemeData(schemeData);

    fetchRelevant();

    validationVariables();

    writeToFile();
  }

  /// dispatching types and functions from data
  /// extract variables and descriptions and store.
  /// [lines] list of scheme lines
  void dispatchSchemeData(List<String> lines) {
    var classDescription = '';
    var variablesDescriptions = <String>[];
    String? section = 'types';
    // reading data line by line and analyze them.
    for (final line in lines) {
      // check if we are in types section or functions section.
      if (sectionRegx.hasMatch(line)) {
        section = sectionRegx.firstMatch(line)!.group(1);
        continue;
      }

      // check for class type description line
      if (classRegx.hasMatch(line)) {
        final classData = classRegx.firstMatch(line)!;
        final className = classData.group(1);
        final classDes = classData.group(2);
        _objects.add(TlObject(className!, className, classDes!, 'classes'));
        continue;
      }

      // check documentation line.
      if (docsRegx.hasMatch(line)) {
        final docData = docsRegx.firstMatch(line)!;

        // if line start with '//-', this line is continuation of last line.
        final continuation = (docData.group(2) == null) ? false : true;

        // starting with '//@description' determines a description line.
        final isDescription = docData.group(3) == 'description' ? true : false;

        // rest of information from this line, after description state.
        final docs = docData.group(4)!.trim();

        // variables description start with '@VARIABLE_NAME', @ is a sign of extra descriptions.
        final hasExtra = docData.group(5) == '@' ? true : false;

        // rest of information from this line, after sign of extra descriptions.
        final extraData = docData.group(6);

        if (isDescription) {
          classDescription = docs;
        } else if (continuation) {
          // if this line is continuation of last line, must be added to last variable description or class description
          // always class description is the first thing that defined. so if there are variables information so class description is finished.
          if (variablesDescriptions.isNotEmpty) {
            variablesDescriptions[variablesDescriptions.length - 1] +=
                '. $docs';
          } else {
            classDescription += '. $docs';
          }
        } else {
          variablesDescriptions.add(docs);
        }
        if (hasExtra) {
          // where the '@' is the variables descriptions sign, splitting extra information by this sign separates descriptions.
          variablesDescriptions.addAll(extraData!.split('@'));
        }
        continue;
      }

      // check for the last line of
      if (fieldsRegx.hasMatch(line)) {
        final classData = fieldsRegx.firstMatch(line)!;

        final className = classData.group(1)!;
        final classArgs = classData.group(2);
        final classReturnType = classData.group(3);
        final args = (classArgs == null)
            ? <String, String>{}
            // ignore: prefer_for_elements_to_map_fromIterable
            : Map<String, String>.fromIterable(classArgs.trim().split(' '),
                key: (var arg) => arg.split(':')[0],
                value: (var arg) => arg.split(':')[1]);

        // store class data and reset class and variables descriptions.
        _objects.add(TlObject(
            upperFirstChar(className), className, classDescription, section!,
            variablesDescriptions: variablesDescriptions,
            argsData: args,
            returnType: classReturnType!));
        classDescription = '';
        variablesDescriptions = [];
      }
    }
  }

  /// find relevant classes like those classes have parent class
  /// and find result classes of function classes
  void fetchRelevant() {
    _objects.where((TlObject obj) => obj.isParent).forEach((TlObject cls) {
      final children = _objects.where((TlObject element) =>
          cls.name == element.returnType && element.hasParent);
      for (var child in children) {
        child.relevantObjects.add(cls.name);
        cls.relevantObjects.add(child.name);
      }
    });
    _objects.where((TlObject obj) => obj.isFunction).forEach((TlObject func) {
      final results =
          _objects.where((TlObject element) => func.returnType == element.name);
      for (var result in results) {
        if (result.isParent) {
          func.relevantObjects.addAll(result.relevantObjects);
        } else {
          func.relevantObjects.add(result.name);
        }
      }
    });
  }

  /// check variables by arguments
  void validationVariables() {
    for (var obj in _objects) {
      obj.makeVariablesList();
    }
  }

  /// final step
  /// write data to file
  void writeToFile() {
    tdApiFile.writeAsStringSync(
        'import \'dart:convert\' show json;\n\npart of \'../td_api.dart\';\npart \'object.dart\';\npart \'function.dart\';\n\n');
    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    for (final obj in _objects) {
      final temple = File('generator/class.tmpl').readAsStringSync();
      final snakeName = snakeCase(obj.name);
      final folderName = sectionFolder(obj.type);
      var finalDir = '$tdApiDir/$folderName/$snakeName.dart';

      var parent = 'TdObject';
      final variables = <String>[];
      final arguments = <String>[];
      var hasFactory = false;
      var fromJsonFields = <String>[];
      final toJsonFields = <String>[];
      var writeMode = FileMode.write;
      var objectPart = mainPart;
      var extra = '';
      var copyWithFields = [];
      var copyWithReturnFields = [];
      if (obj.isParent) {
        hasFactory = true;
        fromJsonFields.add('switch(json["@type"]) {');
        for (var relevantObject in obj.relevantObjects) {
          fromJsonFields.add('  case $relevantObject.constructor:');
          fromJsonFields.add('    return $relevantObject.fromJson(json);');
          // extra = '\n\n  @override\n  dynamic get extra => null;\n\n  @override\n  int? get clientId => null;';
        }
        fromJsonFields.add('  default:');
        fromJsonFields.add('    return const ${obj.name}();');
        fromJsonFields.add('}');
      } else {
        toJsonFields.add('"@type": constructor,');
        for (var variable in obj.variables) {
          variables.add(
              '/// ${variable.description}\n  final ${variable.optional ? "${variable.type}?" : variable.type} ${variable.argName};');
          arguments.add(
              '${variable.optional ? '' : 'required '}this.${variable.argName}');
          fromJsonFields.add('${variable.argName}: ${variable.read},');
          toJsonFields.add('\n      "${variable.name}": ${variable.write},');
          copyWithFields.add('${variable.type}? ${variable.argName},');
          copyWithReturnFields.add(
              '${variable.argName}: ${variable.argName} ?? this.${variable.argName},');
        }
        if (obj.isFunction) {
          fromJsonFields = [];
          parent = 'TdFunction';
          //variables.add('/// callback sign\n  dynamic extra;');
          toJsonFields.add('\n      "@extra": extra,');
        } else {
          // if (_objects.any((func) =>
          //     func.isFunction && func.relevantObjects.contains(obj.name))) {
          //   variables.add('/// callback sign\n  dynamic extra;');
          //   fromJsonFields.add('this.extra = json[\'@extra\'];');
          //   variables.add('/// client identifier\n  int clientId;');
          //   fromJsonFields.add('this.clientId = json[\'@client\'];');
          // }
          if (obj.hasParent) {
            objectPart = '';
            parent = obj.returnType;
            writeMode = FileMode.append;
            finalDir = '$tdApiDir/$folderName/${snakeCase(parent)}.dart';
          }
          if (_objects.any(
              (e) => e.isFunction && e.relevantObjects.contains(obj.name))) {
            variables.add(
                '/// [extra] callback sign\n  @override\n  final dynamic extra;');
            arguments.add('this.extra');
            fromJsonFields.add('extra: json[\'@extra\'],');
            copyWithFields.add('dynamic extra,');
            copyWithReturnFields.add('extra: extra ?? this.extra,');
            variables.add(
                '/// [clientId] client identifier\n  @override\n  final int? clientId;');
            arguments.add('this.clientId');
            fromJsonFields.add('clientId: json[\'@client_id\'],');
            copyWithFields.add('int? clientId,');
            copyWithReturnFields.add('clientId: clientId ?? this.clientId,');
          } else {
            //extra = '\n\n  @override\n  dynamic get extra => null;\n\n  @override\n  int? get clientId => null;';
          }
        }
      }
      if (!obj.hasParent) {
        tdApiFile.writeAsStringSync('part \'$folderName/$snakeName.dart\';\n',
            mode: FileMode.append); // todo: Even Functions?
      }

      final objFile = File(finalDir);
      final stringObj = temple
          //.replaceAll('PART', '')
          .replaceAll('PART', objectPart)
          .replaceAll('PARENT', parent)
          .replaceAll('VARIABLES',
              variables.isNotEmpty ? '\n  ${variables.join('\n\n  ')}' : '')
          .replaceAll('EXTRA', extra)
          .replaceAll(
              'DESCRIPTION',
              "**${obj.name}** *(${lowerFirstChar(obj.name)})* - "
                  "${obj.isFunction ? "TDLib function" : obj.isParent ? "parent" : obj.hasParent ? "child of $parent" : "basic class"}"
                  "\n  ///\n  /// "
                  "${obj.description.trim()}${obj.description.trim().endsWith(".") ? "" : "."}"
                  "${hasFactory ? '' : obj.variables.isNotEmpty ? '\n  ///\n  /// ${obj.variables.map((o) => '* [${o.argName}]: ${o.description.trim()}${o.optional ? " *(optional)*" : ""}${o.description.trim().endsWith(".") ? "" : "."}').join('\n  /// ')}' : ''}"
                  "${obj.isFunction ? "\n  ///\n  /// [${obj.returnType}] is returned on completion." : ""}")
          .replaceAll(
              'ARGUMENTS',
              arguments.isEmpty
                  ? ''
                  : '{\n    ${arguments.join(',\n    ')},\n  }')
          .replaceAll(
              'FROM_JSON',
              obj.isFunction
                  ? ''
                  : """${variables.isNotEmpty || extra.isNotEmpty ? '\n  ' : ''}/// DOC
  factory CLASS_NAME.fromJson(Map<String, dynamic> json) FROM_JSON
  """
                      .replaceAll(
                          'DOC',
                          hasFactory
                              ? ('a ${obj.name} return type can be :\n  /// * [${obj.relevantObjects.join(']\n  /// * [')}]')
                              : 'Parse from a json')
                      .replaceAll(
                          'FROM_JSON',
                          fromJsonFields.isEmpty
                              ? '=> const CLASS_NAME();'
                              : obj.isParent
                                  ? ' {\n    ${fromJsonFields.join('\n    ')}\n  }'
                                  : '=> CLASS_NAME(\n    ${fromJsonFields.join('\n    ')}\n  );\n  '))
          .replaceAll(
              'COPY_FIELDS',
              copyWithFields.isEmpty
                  ? ''
                  : '{\n    ${copyWithFields.join('\n    ')}\n  }')
          .replaceAll(
              'COPY_RETUEN',
              copyWithReturnFields.isEmpty
                  ? 'const CLASS_NAME()'
                  : 'CLASS_NAME(\n    ${copyWithReturnFields.join('\n    ')}\n  )')
          .replaceAll('COPY_OVERRIDE', obj.hasParent ? '\n  @override' : '')
          .replaceAll('CLASS_NAME', obj.name == 'Error' ? 'TdError' : obj.name)
          .replaceAll('TO_JSON', toJsonFields.join(''))
          .replaceAll('ID', lowerFirstChar(obj.name));

      objFile.writeAsStringSync(stringObj, mode: writeMode);
      //tdApiFile.writeAsStringSync(stringObj, mode: FileMode.append);
    }

    final converterTemple = File('generator/converter.tmpl').readAsStringSync();
    var cases = '';
    _objects.where((obj) => !obj.isFunction).forEach((obj) {
      cases +=
          '\n    case \'${lowerFirstChar(obj.name)}\': return ${obj.name == 'Error' ? 'TdError' : obj.name}.fromJson(newJson);';
    });
    tdApiFile.writeAsStringSync(
      converterTemple.replaceAll('CASES', cases),
      mode: FileMode.append,
    );
    //_objects.where((obj) => !obj.hasParent && _objects.any((func) => func.relevantObjects.contains(obj.name))).forEach((obj){
    // _objects.where((obj) => !obj.isFunction).forEach((obj) {
    //   tdApiFile.writeAsStringSync(
    //       '\n    \'${lowerFirstChar(obj.name)}\': (d) => ${obj.name == 'Error' ? 'TdError' : obj.name}.fromJson(d),',
    //       mode: FileMode.append);
    // });
    // tdApiFile.writeAsStringSync('\n};\n', mode: FileMode.append);
  }
}

void main() {
  return DartTdDocumentationGenerator().generate();
}

List<String> readFile(String path) => File(path).readAsLinesSync();

String snakeCase(String string) {
  string = string.replaceAllMapped(
      RegExp(r'(.)([A-Z][a-z]+)'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  string = string.replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  return string.toLowerCase();
}

String camelCase(String string) {
  return string.split('_').map((str) => upperFirstChar(str)).join();
}

String upperFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}

String lowerFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String sectionFolder(String? type) {
  switch (type) {
    case 'functions':
      return 'functions';
    case 'classes':
    case 'types':
    default:
      return 'objects';
  }
}

class TlObject {
  final String name;
  final String description;
  final String type;
  final String tgName;
  late List<String> relevantObjects;
  late List<String> variablesDescriptions;
  late Map<String, String> argsData;
  late List<TlObjectArg> variables;
  final String returnType;

  TlObject(this.name, this.tgName, this.description, this.type,
      {this.returnType = '',
      List<String>? variablesDescriptions,
      Map<String, String>? argsData,
      List<String>? relevantObjects,
      List<TlObjectArg>? variables}) {
    this.variablesDescriptions = variablesDescriptions ?? <String>[];
    this.argsData = argsData ?? <String, String>{};
    this.relevantObjects = relevantObjects ?? <String>[];
    this.variables = variables ?? <TlObjectArg>[];
  }

  bool get isFunction => type == 'functions';

  // bool get isParent => !isFunction && returnType == null;
  bool get isParent => type == 'classes';

  // type == 'types' ok?
  bool get hasParent => !isFunction && name != returnType && !isParent;

  void makeVariablesList() {
    for (var variableData in variablesDescriptions) {
      final splitVariableData = variableData.split(' ');
      final variableName = splitVariableData[0] == 'param_description'
          ? 'description'
          : splitVariableData[0];
      final variableDescription = splitVariableData.sublist(1).join(' ');
      final variableType = argsData[variableName];
      final obj =
          TlObjectArg(variableName, variableDescription, tlType: variableType);
      variables.add(obj);
    }
  }
}

class TlObjectArg {
  final String name;
  final String description;
  late String argName;
  late String type;
  late String read;
  late String write;
  late bool optional;

  TlObjectArg(this.name, this.description, {String? argName, String? tlType}) {
    this.argName = argName ?? lowerFirstChar(camelCase(name));
    type = getType(tlType);
    if (type == 'Error') type = 'TdError';
    optional = (description.contains('may be null') ||
            description.contains("pass null")) &
        !description
            .contains('List of'); // null list fiedls are just empty listes.
    read = getRead(name, type,
        isInt64: tlType == 'int64',
        optional: optional,
        intOptional: description.contains('0 if none'));
    write = getWrite(this.argName, type, optional: optional);
  }

  static String getType(type, {String prefix = 'TYPE'}) {
    String dartType;
    if (builtInTypes.contains(type)) {
      dartType = getBuiltInDartType(type);
    } else if (type.startsWith('vector')) {
      final subType = type.substring(7, type.length - 1);
      dartType = getType(subType, prefix: 'List<TYPE>');
    } else {
      type = upperFirstChar(type);
      //if (_objects.any((TlObject obj) => obj.isParent && obj.name == type))
      //  dartType = 'TdObject';
      //else
      //  dartType = type;
      dartType = type;
    }
    return prefix.replaceAll('TYPE', dartType);
  }

  static String getRead(
    String name,
    String type, {
    String pattern = 'PLACE',
    String itemName = 'item',
    bool isInt64 = false,
    bool optional = false,
    bool intOptional = false,
  }) {
    String readFromJson;
    if (dartTypes.contains(type)) {
      if (isInt64) {
        readFromJson = !optional & !intOptional
            ? 'int.parse($pattern)'
            : 'int.tryParse($pattern ?? "")'; // todo: change to BigInt or String!
      } else {
        readFromJson = pattern;
      }
      if (intOptional) {
        readFromJson += ' ?? 0';
      }
    } else if (type.startsWith('List')) {
      final subType = type.substring(5, type.length - 1);
      readFromJson =
          'TYPE.from(($pattern ?? []).map(($itemName) => ${getRead(name, subType, pattern: itemName, itemName: 'innerItem')}).toList())';
    } else {
      readFromJson =
          '${optional ? '$pattern == null ? null : ' : ''}TYPE.fromJson($pattern)';
    }
    return readFromJson
        .replaceAll('PLACE', 'json[\'$name\']')
        .replaceAll('TYPE', type);
  }

  static String getWrite(String argName, String type,
      {String itemName = 'i', isList = false, optional = false}) {
    String writeToJson;
    if (dartTypes.contains(type)) {
      writeToJson = '';
    } else if (type.startsWith('List')) {
      final subType = type.substring(5, type.length - 1);
      writeToJson =
          '.map(($itemName) => ${getWrite(itemName, subType, itemName: '${itemName}i', isList: true)}).toList()';
    } else if (!isList) {
      writeToJson = '${optional ? '?' : ''}.toJson()';
    } else {
      writeToJson = '.toJson()';
    }
    return '${itemName.length == 1 ? argName : itemName.substring(0, itemName.length - 1)}$writeToJson';
  }

  static String getBuiltInDartType(String type) {
    switch (type) {
      case 'int':
      case 'int32':
      case 'int53':
      case 'int64':
      case 'long':
        return 'int';
      case 'double':
        return 'double';
      case 'string':
      case 'bytes':
        return 'String';
      case 'Bool':
        return 'bool';
      default:
        return '';
    }
  }
}
