part of '../tdapi.dart';

/// **SendPaymentForm** *(sendPaymentForm)* - TDLib function
///
/// Sends a filled-out payment form to the bot for final verification.
///
/// * [inputInvoice]: The invoice.
/// * [paymentFormId]: Payment form identifier returned by getPaymentForm.
/// * [orderInfoId]: Identifier returned by validateOrderInfo, or an empty string.
/// * [shippingOptionId]: Identifier of a chosen shipping option, if applicable.
/// * [credentials]: The credentials chosen by user for payment.
/// * [tipAmount]: Chosen by the user amount of tip in the smallest units of the currency.
///
/// [PaymentResult] is returned on completion.
final class SendPaymentForm extends TdFunction {
  
  /// **SendPaymentForm** *(sendPaymentForm)* - TDLib function
  ///
  /// Sends a filled-out payment form to the bot for final verification.
  ///
  /// * [inputInvoice]: The invoice.
  /// * [paymentFormId]: Payment form identifier returned by getPaymentForm.
  /// * [orderInfoId]: Identifier returned by validateOrderInfo, or an empty string.
  /// * [shippingOptionId]: Identifier of a chosen shipping option, if applicable.
  /// * [credentials]: The credentials chosen by user for payment.
  /// * [tipAmount]: Chosen by the user amount of tip in the smallest units of the currency.
  ///
  /// [PaymentResult] is returned on completion.
  const SendPaymentForm({
    required this.inputInvoice,
    required this.paymentFormId,
    required this.orderInfoId,
    required this.shippingOptionId,
    required this.credentials,
    required this.tipAmount,
  });
  
  /// The invoice
  final InputInvoice inputInvoice;

  /// Payment form identifier returned by getPaymentForm
  final int paymentFormId;

  /// Identifier returned by validateOrderInfo, or an empty string
  final String orderInfoId;

  /// Identifier of a chosen shipping option, if applicable
  final String shippingOptionId;

  /// The credentials chosen by user for payment
  final InputCredentials credentials;

  /// Chosen by the user amount of tip in the smallest units of the currency
  final int tipAmount;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "input_invoice": inputInvoice.toJson(),
      "payment_form_id": paymentFormId,
      "order_info_id": orderInfoId,
      "shipping_option_id": shippingOptionId,
      "credentials": credentials.toJson(),
      "tip_amount": tipAmount,
      "@extra": extra,
		};
	}

  
  SendPaymentForm copyWith({
    InputInvoice? inputInvoice,
    int? paymentFormId,
    String? orderInfoId,
    String? shippingOptionId,
    InputCredentials? credentials,
    int? tipAmount,
  }) => SendPaymentForm(
    inputInvoice: inputInvoice ?? this.inputInvoice,
    paymentFormId: paymentFormId ?? this.paymentFormId,
    orderInfoId: orderInfoId ?? this.orderInfoId,
    shippingOptionId: shippingOptionId ?? this.shippingOptionId,
    credentials: credentials ?? this.credentials,
    tipAmount: tipAmount ?? this.tipAmount,
  );

  static const String objectType = 'sendPaymentForm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
