part of '../tdapi.dart';

/// **GetMessageFileType** *(getMessageFileType)* - TDLib function
  ///
  /// Returns information about a file with messages exported from another application.
  ///
  /// * [messageFileHead]: Beginning of the message file; up to 100 first lines.
  ///
  /// [MessageFileType] is returned on completion.
class GetMessageFileType extends TdFunction {
  
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
      "@type": constructor,
      "message_file_head": messageFileHead,
      "@extra": extra,
    };
  }
  
  GetMessageFileType copyWith({
    String? messageFileHead,
  }) => GetMessageFileType(
    messageFileHead: messageFileHead ?? this.messageFileHead,
  );

  static const String constructor = 'getMessageFileType';
  
  @override
  String getConstructor() => constructor;
}
