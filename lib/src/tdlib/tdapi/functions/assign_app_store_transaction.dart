part of '../tdapi.dart';

/// **AssignAppStoreTransaction** *(assignAppStoreTransaction)* - TDLib function
///
/// Informs server about a purchase through App Store. For official applications only.
///
/// * [receipt]: App Store receipt.
/// * [purpose]: Transaction purpose.
///
/// [Ok] is returned on completion.
final class AssignAppStoreTransaction extends TdFunction {
  
  /// **AssignAppStoreTransaction** *(assignAppStoreTransaction)* - TDLib function
  ///
  /// Informs server about a purchase through App Store. For official applications only.
  ///
  /// * [receipt]: App Store receipt.
  /// * [purpose]: Transaction purpose.
  ///
  /// [Ok] is returned on completion.
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.purpose,
  });
  
  /// App Store receipt 
  final String receipt;

  /// Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "receipt": receipt,
      "purpose": purpose.toJson(),
      "@extra": extra,
		};
	}

  
  AssignAppStoreTransaction copyWith({
    String? receipt,
    StorePaymentPurpose? purpose,
  }) => AssignAppStoreTransaction(
    receipt: receipt ?? this.receipt,
    purpose: purpose ?? this.purpose,
  );

  static const String objectType = 'assignAppStoreTransaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
