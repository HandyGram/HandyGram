part of '../tdapi.dart';

/// **GetBankCardInfo** *(getBankCardInfo)* - TDLib function
///
/// Returns information about a bank card.
///
/// * [bankCardNumber]: The bank card number.
///
/// [BankCardInfo] is returned on completion.
final class GetBankCardInfo extends TdFunction {
  
  /// **GetBankCardInfo** *(getBankCardInfo)* - TDLib function
  ///
  /// Returns information about a bank card.
  ///
  /// * [bankCardNumber]: The bank card number.
  ///
  /// [BankCardInfo] is returned on completion.
  const GetBankCardInfo({
    required this.bankCardNumber,
  });
  
  /// The bank card number
  final String bankCardNumber;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bank_card_number": bankCardNumber,
      "@extra": extra,
		};
	}

  
  GetBankCardInfo copyWith({
    String? bankCardNumber,
  }) => GetBankCardInfo(
    bankCardNumber: bankCardNumber ?? this.bankCardNumber,
  );

  static const String objectType = 'getBankCardInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
