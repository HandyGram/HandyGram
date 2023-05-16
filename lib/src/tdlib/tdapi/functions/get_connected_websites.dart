part of '../tdapi.dart';

/// **GetConnectedWebsites** *(getConnectedWebsites)* - TDLib function
///
/// Returns all website where the current user used Telegram to log in.
///
/// [ConnectedWebsites] is returned on completion.
final class GetConnectedWebsites extends TdFunction {
  
  /// **GetConnectedWebsites** *(getConnectedWebsites)* - TDLib function
  ///
  /// Returns all website where the current user used Telegram to log in.
  ///
  /// [ConnectedWebsites] is returned on completion.
  const GetConnectedWebsites();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetConnectedWebsites copyWith() => const GetConnectedWebsites();

  static const String objectType = 'getConnectedWebsites';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
