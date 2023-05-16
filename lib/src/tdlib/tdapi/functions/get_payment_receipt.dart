part of '../tdapi.dart';

/// **GetPaymentReceipt** *(getPaymentReceipt)* - TDLib function
///
/// Returns information about a successful payment.
///
/// * [chatId]: Chat identifier of the messagePaymentSuccessful message.
/// * [messageId]: Message identifier.
///
/// [PaymentReceipt] is returned on completion.
final class GetPaymentReceipt extends TdFunction {
  
  /// **GetPaymentReceipt** *(getPaymentReceipt)* - TDLib function
  ///
  /// Returns information about a successful payment.
  ///
  /// * [chatId]: Chat identifier of the messagePaymentSuccessful message.
  /// * [messageId]: Message identifier.
  ///
  /// [PaymentReceipt] is returned on completion.
  const GetPaymentReceipt({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier of the messagePaymentSuccessful message 
  final int chatId;

  /// Message identifier
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  
  GetPaymentReceipt copyWith({
    int? chatId,
    int? messageId,
  }) => GetPaymentReceipt(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'getPaymentReceipt';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
