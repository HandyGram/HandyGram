part of '../tdapi.dart';

/// **CreateInvoiceLink** *(createInvoiceLink)* - TDLib function
  ///
  /// Creates a link for the given invoice; for bots only.
  ///
  /// * [invoice]: Information about the invoice of the type inputMessageInvoice.
  ///
  /// [HttpUrl] is returned on completion.
class CreateInvoiceLink extends TdFunction {
  
  /// **CreateInvoiceLink** *(createInvoiceLink)* - TDLib function
  ///
  /// Creates a link for the given invoice; for bots only.
  ///
  /// * [invoice]: Information about the invoice of the type inputMessageInvoice.
  ///
  /// [HttpUrl] is returned on completion.
  const CreateInvoiceLink({
    required this.invoice,
  });
  
  /// Information about the invoice of the type inputMessageInvoice
  final InputMessageContent invoice;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "invoice": invoice.toJson(),
      "@extra": extra,
    };
  }
  
  CreateInvoiceLink copyWith({
    InputMessageContent? invoice,
  }) => CreateInvoiceLink(
    invoice: invoice ?? this.invoice,
  );

  static const String constructor = 'createInvoiceLink';
  
  @override
  String getConstructor() => constructor;
}
