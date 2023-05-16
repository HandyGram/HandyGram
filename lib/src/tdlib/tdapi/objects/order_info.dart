part of '../tdapi.dart';

/// **OrderInfo** *(orderInfo)* - basic class
///
/// Order information.
///
/// * [name]: Name of the user.
/// * [phoneNumber]: Phone number of the user.
/// * [emailAddress]: Email address of the user.
/// * [shippingAddress]: Shipping address for this order; may be null *(optional)*.
final class OrderInfo extends TdObject {
  
  /// **OrderInfo** *(orderInfo)* - basic class
  ///
  /// Order information.
  ///
  /// * [name]: Name of the user.
  /// * [phoneNumber]: Phone number of the user.
  /// * [emailAddress]: Email address of the user.
  /// * [shippingAddress]: Shipping address for this order; may be null *(optional)*.
  const OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    this.shippingAddress,
    this.extra,
    this.clientId,
  });
  
  /// Name of the user
  final String name;

  /// Phone number of the user
  final String phoneNumber;

  /// Email address of the user
  final String emailAddress;

  /// Shipping address for this order; may be null
  final Address? shippingAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
    name: json['name'],
    phoneNumber: json['phone_number'],
    emailAddress: json['email_address'],
    shippingAddress: json['shipping_address'] == null ? null : Address.fromJson(json['shipping_address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "phone_number": phoneNumber,
      "email_address": emailAddress,
      "shipping_address": shippingAddress?.toJson(),
		};
	}

  
  OrderInfo copyWith({
    String? name,
    String? phoneNumber,
    String? emailAddress,
    Address? shippingAddress,
    dynamic extra,
    int? clientId,
  }) => OrderInfo(
    name: name ?? this.name,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    emailAddress: emailAddress ?? this.emailAddress,
    shippingAddress: shippingAddress ?? this.shippingAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'orderInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
