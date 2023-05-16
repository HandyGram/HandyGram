part of '../tdapi.dart';

/// **PaymentForm** *(paymentForm)* - basic class
///
/// Contains information about an invoice payment form.
///
/// * [id]: The payment form identifier.
/// * [invoice]: Full information about the invoice.
/// * [sellerBotUserId]: User identifier of the seller bot.
/// * [paymentProviderUserId]: User identifier of the payment provider bot.
/// * [paymentProvider]: Information about the payment provider.
/// * [additionalPaymentOptions]: The list of additional payment options.
/// * [savedOrderInfo]: Saved server-side order information; may be null *(optional)*.
/// * [savedCredentials]: The list of saved payment credentials.
/// * [canSaveCredentials]: True, if the user can choose to save credentials.
/// * [needPassword]: True, if the user will be able to save credentials, if sets up a 2-step verification password.
/// * [productTitle]: Product title.
/// * [productDescription]: Product description.
/// * [productPhoto]: Product photo; may be null *(optional)*.
final class PaymentForm extends TdObject {
  
  /// **PaymentForm** *(paymentForm)* - basic class
  ///
  /// Contains information about an invoice payment form.
  ///
  /// * [id]: The payment form identifier.
  /// * [invoice]: Full information about the invoice.
  /// * [sellerBotUserId]: User identifier of the seller bot.
  /// * [paymentProviderUserId]: User identifier of the payment provider bot.
  /// * [paymentProvider]: Information about the payment provider.
  /// * [additionalPaymentOptions]: The list of additional payment options.
  /// * [savedOrderInfo]: Saved server-side order information; may be null *(optional)*.
  /// * [savedCredentials]: The list of saved payment credentials.
  /// * [canSaveCredentials]: True, if the user can choose to save credentials.
  /// * [needPassword]: True, if the user will be able to save credentials, if sets up a 2-step verification password.
  /// * [productTitle]: Product title.
  /// * [productDescription]: Product description.
  /// * [productPhoto]: Product photo; may be null *(optional)*.
  const PaymentForm({
    required this.id,
    required this.invoice,
    required this.sellerBotUserId,
    required this.paymentProviderUserId,
    required this.paymentProvider,
    required this.additionalPaymentOptions,
    this.savedOrderInfo,
    required this.savedCredentials,
    required this.canSaveCredentials,
    required this.needPassword,
    required this.productTitle,
    required this.productDescription,
    this.productPhoto,
    this.extra,
    this.clientId,
  });
  
  /// The payment form identifier
  final int id;

  /// Full information about the invoice
  final Invoice invoice;

  /// User identifier of the seller bot
  final int sellerBotUserId;

  /// User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// Information about the payment provider
  final PaymentProvider paymentProvider;

  /// The list of additional payment options
  final List<PaymentOption> additionalPaymentOptions;

  /// Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// The list of saved payment credentials
  final List<SavedCredentials> savedCredentials;

  /// True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// True, if the user will be able to save credentials, if sets up a 2-step verification password
  final bool needPassword;

  /// Product title
  final String productTitle;

  /// Product description
  final FormattedText productDescription;

  /// Product photo; may be null
  final Photo? productPhoto;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentForm.fromJson(Map<String, dynamic> json) => PaymentForm(
    id: int.parse(json['id']),
    invoice: Invoice.fromJson(json['invoice']),
    sellerBotUserId: json['seller_bot_user_id'],
    paymentProviderUserId: json['payment_provider_user_id'],
    paymentProvider: PaymentProvider.fromJson(json['payment_provider']),
    additionalPaymentOptions: List<PaymentOption>.from((json['additional_payment_options'] ?? []).map((item) => PaymentOption.fromJson(item)).toList()),
    savedOrderInfo: json['saved_order_info'] == null ? null : OrderInfo.fromJson(json['saved_order_info']),
    savedCredentials: List<SavedCredentials>.from((json['saved_credentials'] ?? []).map((item) => SavedCredentials.fromJson(item)).toList()),
    canSaveCredentials: json['can_save_credentials'],
    needPassword: json['need_password'],
    productTitle: json['product_title'],
    productDescription: FormattedText.fromJson(json['product_description']),
    productPhoto: json['product_photo'] == null ? null : Photo.fromJson(json['product_photo']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "invoice": invoice.toJson(),
      "seller_bot_user_id": sellerBotUserId,
      "payment_provider_user_id": paymentProviderUserId,
      "payment_provider": paymentProvider.toJson(),
      "additional_payment_options": additionalPaymentOptions.map((i) => i.toJson()).toList(),
      "saved_order_info": savedOrderInfo?.toJson(),
      "saved_credentials": savedCredentials.map((i) => i.toJson()).toList(),
      "can_save_credentials": canSaveCredentials,
      "need_password": needPassword,
      "product_title": productTitle,
      "product_description": productDescription.toJson(),
      "product_photo": productPhoto?.toJson(),
		};
	}

  
  PaymentForm copyWith({
    int? id,
    Invoice? invoice,
    int? sellerBotUserId,
    int? paymentProviderUserId,
    PaymentProvider? paymentProvider,
    List<PaymentOption>? additionalPaymentOptions,
    OrderInfo? savedOrderInfo,
    List<SavedCredentials>? savedCredentials,
    bool? canSaveCredentials,
    bool? needPassword,
    String? productTitle,
    FormattedText? productDescription,
    Photo? productPhoto,
    dynamic extra,
    int? clientId,
  }) => PaymentForm(
    id: id ?? this.id,
    invoice: invoice ?? this.invoice,
    sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
    paymentProviderUserId: paymentProviderUserId ?? this.paymentProviderUserId,
    paymentProvider: paymentProvider ?? this.paymentProvider,
    additionalPaymentOptions: additionalPaymentOptions ?? this.additionalPaymentOptions,
    savedOrderInfo: savedOrderInfo ?? this.savedOrderInfo,
    savedCredentials: savedCredentials ?? this.savedCredentials,
    canSaveCredentials: canSaveCredentials ?? this.canSaveCredentials,
    needPassword: needPassword ?? this.needPassword,
    productTitle: productTitle ?? this.productTitle,
    productDescription: productDescription ?? this.productDescription,
    productPhoto: productPhoto ?? this.productPhoto,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'paymentForm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
