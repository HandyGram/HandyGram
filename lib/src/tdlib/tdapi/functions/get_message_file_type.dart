part of '../tdapi.dart';

/// **GetMessageFileType** *(getMessageFileType)* - TDLib function
///
/// Returns information about a file with messages exported from another application.
///
/// * [messageFileHead]: Beginning of the message file; up to 100 first lines.
///
/// [MessageFileType] is returned on completion.
final class GetMessageFileType extends TdFunction {
  
  /// **GetMessageFileType** *(getMessageFileType)* - TDLib function
  ///
  /// Returns information about a file with messages exported from another application.
  ///
  /// * [messageFileHead]: Beginning of the message file; up to 100 first lines.
  ///
  /// [MessageFileType] is returned on completion.
  const GetMessageFileType({
    required this.messageFileHead,
  });
  
  /// Beginning of the message file; up to 100 first lines
  final String messageFileHead;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "message_file_head": messageFileHead,
      "@extra": extra,
		};
	}

  
  GetMessageFileType copyWith({
    String? messageFileHead,
  }) => GetMessageFileType(
    messageFileHead: messageFileHead ?? this.messageFileHead,
  );

  static const String objectType = 'getMessageFileType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
