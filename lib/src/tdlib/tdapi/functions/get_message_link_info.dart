part of '../tdapi.dart';

/// **GetMessageLinkInfo** *(getMessageLinkInfo)* - TDLib function
  ///
  /// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage.
  ///
  /// * [url]: The message link.
  ///
  /// [MessageLinkInfo] is returned on completion.
class GetMessageLinkInfo extends TdFunction {
  
  /// **GetMessageLinkInfo** *(getMessageLinkInfo)* - TDLib function
  ///
  /// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage.
  ///
  /// * [url]: The message link.
  ///
  /// [MessageLinkInfo] is returned on completion.
  const GetMessageLinkInfo({
    required this.url,
  });
  
  /// The message link
  final String url;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "url": url,
      "@extra": extra,
    };
  }
  
  GetMessageLinkInfo copyWith({
    String? url,
  }) => GetMessageLinkInfo(
    url: url ?? this.url,
  );

  static const String constructor = 'getMessageLinkInfo';
  
  @override
  String getConstructor() => constructor;
}
