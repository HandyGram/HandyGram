part of '../tdapi.dart';

/// **GetBankCardInfo** *(getBankCardInfo)* - TDLib function
  ///
  /// Returns information about a bank card.
  ///
  /// * [bankCardNumber]: The bank card number.
  ///
  /// [BankCardInfo] is returned on completion.
class GetBankCardInfo extends TdFunction {
  
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
      "@type": constructor,
      "bank_card_number": bankCardNumber,
      "@extra": extra,
    };
  }
  
  GetBankCardInfo copyWith({
    String? bankCardNumber,
  }) => GetBankCardInfo(
    bankCardNumber: bankCardNumber ?? this.bankCardNumber,
  );

  static const String constructor = 'getBankCardInfo';
  
  @override
  String getConstructor() => constructor;
}
