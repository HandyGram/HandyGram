part of '../tdapi.dart';

/// **MessageCopyOptions** *(messageCopyOptions)* - basic class
///
/// Options to be used when a message content is copied without reference to the original sender. Service messages and messageInvoice can't be copied.
///
/// * [sendCopy]: True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local.
/// * [replaceCaption]: True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false.
/// * [newCaption]: New message caption; pass null to copy message without caption. Ignored if replace_caption is false *(optional)*.
final class MessageCopyOptions extends TdObject {
  
  /// **MessageCopyOptions** *(messageCopyOptions)* - basic class
  ///
  /// Options to be used when a message content is copied without reference to the original sender. Service messages and messageInvoice can't be copied.
  ///
  /// * [sendCopy]: True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local.
  /// * [replaceCaption]: True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false.
  /// * [newCaption]: New message caption; pass null to copy message without caption. Ignored if replace_caption is false *(optional)*.
  const MessageCopyOptions({
    required this.sendCopy,
    required this.replaceCaption,
    this.newCaption,
  });
  
  /// True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local
  final bool sendCopy;

  /// True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false
  final bool replaceCaption;

  /// New message caption; pass null to copy message without caption. Ignored if replace_caption is false
  final FormattedText? newCaption;
  
  /// Parse from a json
  factory MessageCopyOptions.fromJson(Map<String, dynamic> json) => MessageCopyOptions(
    sendCopy: json['send_copy'],
    replaceCaption: json['replace_caption'],
    newCaption: json['new_caption'] == null ? null : FormattedText.fromJson(json['new_caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "send_copy": sendCopy,
      "replace_caption": replaceCaption,
      "new_caption": newCaption?.toJson(),
		};
	}

  
  MessageCopyOptions copyWith({
    bool? sendCopy,
    bool? replaceCaption,
    FormattedText? newCaption,
  }) => MessageCopyOptions(
    sendCopy: sendCopy ?? this.sendCopy,
    replaceCaption: replaceCaption ?? this.replaceCaption,
    newCaption: newCaption ?? this.newCaption,
  );

  static const String objectType = 'messageCopyOptions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
