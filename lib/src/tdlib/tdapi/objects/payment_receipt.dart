part of '../tdapi.dart';

/// **PaymentReceipt** *(paymentReceipt)* - basic class
///
/// Contains information about a successful payment.
///
/// * [title]: Product title.
/// * [description]: Product description.
/// * [photo]: Product photo; may be null *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the payment was made.
/// * [sellerBotUserId]: User identifier of the seller bot.
/// * [paymentProviderUserId]: User identifier of the payment provider bot.
/// * [invoice]: Information about the invoice.
/// * [orderInfo]: Order information; may be null *(optional)*.
/// * [shippingOption]: Chosen shipping option; may be null *(optional)*.
/// * [credentialsTitle]: Title of the saved credentials chosen by the buyer.
/// * [tipAmount]: The amount of tip chosen by the buyer in the smallest units of the currency.
final class PaymentReceipt extends TdObject {
  
  /// **PaymentReceipt** *(paymentReceipt)* - basic class
  ///
  /// Contains information about a successful payment.
  ///
  /// * [title]: Product title.
  /// * [description]: Product description.
  /// * [photo]: Product photo; may be null *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the payment was made.
  /// * [sellerBotUserId]: User identifier of the seller bot.
  /// * [paymentProviderUserId]: User identifier of the payment provider bot.
  /// * [invoice]: Information about the invoice.
  /// * [orderInfo]: Order information; may be null *(optional)*.
  /// * [shippingOption]: Chosen shipping option; may be null *(optional)*.
  /// * [credentialsTitle]: Title of the saved credentials chosen by the buyer.
  /// * [tipAmount]: The amount of tip chosen by the buyer in the smallest units of the currency.
  const PaymentReceipt({
    required this.title,
    required this.description,
    this.photo,
    required this.date,
    required this.sellerBotUserId,
    required this.paymentProviderUserId,
    required this.invoice,
    this.orderInfo,
    this.shippingOption,
    required this.credentialsTitle,
    required this.tipAmount,
    this.extra,
    this.clientId,
  });
  
  /// Product title
  final String title;

  /// Product description
  final FormattedText description;

  /// Product photo; may be null
  final Photo? photo;

  /// Point in time (Unix timestamp) when the payment was made
  final int date;

  /// User identifier of the seller bot
  final int sellerBotUserId;

  /// User identifier of the payment provider bot
  final int paymentProviderUserId;

  /// Information about the invoice
  final Invoice invoice;

  /// Order information; may be null
  final OrderInfo? orderInfo;

  /// Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// The amount of tip chosen by the buyer in the smallest units of the currency
  final int tipAmount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentReceipt.fromJson(Map<String, dynamic> json) => PaymentReceipt(
    title: json['title'],
    description: FormattedText.fromJson(json['description']),
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    date: json['date'],
    sellerBotUserId: json['seller_bot_user_id'],
    paymentProviderUserId: json['payment_provider_user_id'],
    invoice: Invoice.fromJson(json['invoice']),
    orderInfo: json['order_info'] == null ? null : OrderInfo.fromJson(json['order_info']),
    shippingOption: json['shipping_option'] == null ? null : ShippingOption.fromJson(json['shipping_option']),
    credentialsTitle: json['credentials_title'],
    tipAmount: json['tip_amount'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "date": date,
      "seller_bot_user_id": sellerBotUserId,
      "payment_provider_user_id": paymentProviderUserId,
      "invoice": invoice.toJson(),
      "order_info": orderInfo?.toJson(),
      "shipping_option": shippingOption?.toJson(),
      "credentials_title": credentialsTitle,
      "tip_amount": tipAmount,
		};
	}

  
  PaymentReceipt copyWith({
    String? title,
    FormattedText? description,
    Photo? photo,
    int? date,
    int? sellerBotUserId,
    int? paymentProviderUserId,
    Invoice? invoice,
    OrderInfo? orderInfo,
    ShippingOption? shippingOption,
    String? credentialsTitle,
    int? tipAmount,
    dynamic extra,
    int? clientId,
  }) => PaymentReceipt(
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    date: date ?? this.date,
    sellerBotUserId: sellerBotUserId ?? this.sellerBotUserId,
    paymentProviderUserId: paymentProviderUserId ?? this.paymentProviderUserId,
    invoice: invoice ?? this.invoice,
    orderInfo: orderInfo ?? this.orderInfo,
    shippingOption: shippingOption ?? this.shippingOption,
    credentialsTitle: credentialsTitle ?? this.credentialsTitle,
    tipAmount: tipAmount ?? this.tipAmount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'paymentReceipt';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
