part of '../tdapi.dart';

/// **GetPaymentForm** *(getPaymentForm)* - TDLib function
///
/// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy.
///
/// * [inputInvoice]: The invoice.
/// * [theme]: Preferred payment form theme; pass null to use the default theme *(optional)*.
///
/// [PaymentForm] is returned on completion.
final class GetPaymentForm extends TdFunction {
  
  /// **GetPaymentForm** *(getPaymentForm)* - TDLib function
  ///
  /// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy.
  ///
  /// * [inputInvoice]: The invoice.
  /// * [theme]: Preferred payment form theme; pass null to use the default theme *(optional)*.
  ///
  /// [PaymentForm] is returned on completion.
  const GetPaymentForm({
    required this.inputInvoice,
    this.theme,
  });
  
  /// The invoice
  final InputInvoice inputInvoice;

  /// Preferred payment form theme; pass null to use the default theme
  final ThemeParameters? theme;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "input_invoice": inputInvoice.toJson(),
      "theme": theme?.toJson(),
      "@extra": extra,
		};
	}

  
  GetPaymentForm copyWith({
    InputInvoice? inputInvoice,
    ThemeParameters? theme,
  }) => GetPaymentForm(
    inputInvoice: inputInvoice ?? this.inputInvoice,
    theme: theme ?? this.theme,
  );

  static const String objectType = 'getPaymentForm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
