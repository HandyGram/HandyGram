part of '../tdapi.dart';

/// **SetLoginEmailAddress** *(setLoginEmailAddress)* - TDLib function
  ///
  /// Changes the login email address of the user. The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode.. To use Apple setLoginEmailAddress/Google setLoginEmailAddress instead of a email address, call checkLoginEmailAddressCode directly.
  ///
  /// * [newLoginEmailAddress]: New login email address.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
class SetLoginEmailAddress extends TdFunction {
  
  /// **SetLoginEmailAddress** *(setLoginEmailAddress)* - TDLib function
  ///
  /// Changes the login email address of the user. The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode.. To use Apple setLoginEmailAddress/Google setLoginEmailAddress instead of a email address, call checkLoginEmailAddressCode directly.
  ///
  /// * [newLoginEmailAddress]: New login email address.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const SetLoginEmailAddress({
    required this.newLoginEmailAddress,
  });
  
  /// New login email address
  final String newLoginEmailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "new_login_email_address": newLoginEmailAddress,
      "@extra": extra,
    };
  }
  
  SetLoginEmailAddress copyWith({
    String? newLoginEmailAddress,
  }) => SetLoginEmailAddress(
    newLoginEmailAddress: newLoginEmailAddress ?? this.newLoginEmailAddress,
  );

  static const String constructor = 'setLoginEmailAddress';
  
  @override
  String getConstructor() => constructor;
}
