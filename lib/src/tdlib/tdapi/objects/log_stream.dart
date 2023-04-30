part of '../tdapi.dart';

/// **LogStream** *(logStream)* - parent
  ///
  /// Describes a stream to which TDLib internal log is written.
class LogStream extends TdObject {
  
  /// **LogStream** *(logStream)* - parent
  ///
  /// Describes a stream to which TDLib internal log is written.
  const LogStream();
  
  /// a LogStream return type can be :
  /// * [LogStreamDefault]
  /// * [LogStreamFile]
  /// * [LogStreamEmpty]
  factory LogStream.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LogStreamDefault.constructor:
        return LogStreamDefault.fromJson(json);
      case LogStreamFile.constructor:
        return LogStreamFile.fromJson(json);
      case LogStreamEmpty.constructor:
        return LogStreamEmpty.fromJson(json);
      default:
        return const LogStream();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  LogStream copyWith() => const LogStream();

  static const String constructor = 'logStream';
  
  @override
  String getConstructor() => constructor;
}


/// **LogStreamDefault** *(logStreamDefault)* - child of LogStream
  ///
  /// The log is written to stderr or an OS specific log.
class LogStreamDefault extends LogStream {
  
  /// **LogStreamDefault** *(logStreamDefault)* - child of LogStream
  ///
  /// The log is written to stderr or an OS specific log.
  const LogStreamDefault({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LogStreamDefault.fromJson(Map<String, dynamic> json) => LogStreamDefault(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  LogStreamDefault copyWith({
    dynamic extra,
    int? clientId,
  }) => LogStreamDefault(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'logStreamDefault';
  
  @override
  String getConstructor() => constructor;
}


/// **LogStreamFile** *(logStreamFile)* - child of LogStream
  ///
  /// The log is written to a file.
  ///
  /// * [path]: Path to the file to where the internal TDLib log will be written.
  /// * [maxFileSize]: The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes.
  /// * [redirectStderr]: Pass true to additionally redirect stderr to the log file. Ignored on Windows.
class LogStreamFile extends LogStream {
  
  /// **LogStreamFile** *(logStreamFile)* - child of LogStream
  ///
  /// The log is written to a file.
  ///
  /// * [path]: Path to the file to where the internal TDLib log will be written.
  /// * [maxFileSize]: The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes.
  /// * [redirectStderr]: Pass true to additionally redirect stderr to the log file. Ignored on Windows.
  const LogStreamFile({
    required this.path,
    required this.maxFileSize,
    required this.redirectStderr,
    this.extra,
    this.clientId,
  });
  
  /// Path to the file to where the internal TDLib log will be written
  final String path;

  /// The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes
  final int maxFileSize;

  /// Pass true to additionally redirect stderr to the log file. Ignored on Windows
  final bool redirectStderr;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LogStreamFile.fromJson(Map<String, dynamic> json) => LogStreamFile(
    path: json['path'],
    maxFileSize: json['max_file_size'],
    redirectStderr: json['redirect_stderr'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "path": path,
      "max_file_size": maxFileSize,
      "redirect_stderr": redirectStderr,
    };
  }
  
  @override
  LogStreamFile copyWith({
    String? path,
    int? maxFileSize,
    bool? redirectStderr,
    dynamic extra,
    int? clientId,
  }) => LogStreamFile(
    path: path ?? this.path,
    maxFileSize: maxFileSize ?? this.maxFileSize,
    redirectStderr: redirectStderr ?? this.redirectStderr,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'logStreamFile';
  
  @override
  String getConstructor() => constructor;
}


/// **LogStreamEmpty** *(logStreamEmpty)* - child of LogStream
  ///
  /// The log is written nowhere.
class LogStreamEmpty extends LogStream {
  
  /// **LogStreamEmpty** *(logStreamEmpty)* - child of LogStream
  ///
  /// The log is written nowhere.
  const LogStreamEmpty({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LogStreamEmpty.fromJson(Map<String, dynamic> json) => LogStreamEmpty(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  LogStreamEmpty copyWith({
    dynamic extra,
    int? clientId,
  }) => LogStreamEmpty(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'logStreamEmpty';
  
  @override
  String getConstructor() => constructor;
}
