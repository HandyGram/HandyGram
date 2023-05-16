part of '../tdapi.dart';

/// **GetMessageLinkInfo** *(getMessageLinkInfo)* - TDLib function
///
/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage.
///
/// * [url]: The message link.
///
/// [MessageLinkInfo] is returned on completion.
final class GetMessageLinkInfo extends TdFunction {
  
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
			"@type": objectType,
      "url": url,
      "@extra": extra,
		};
	}

  
  GetMessageLinkInfo copyWith({
    String? url,
  }) => GetMessageLinkInfo(
    url: url ?? this.url,
  );

  static const String objectType = 'getMessageLinkInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
