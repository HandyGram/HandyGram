part of '../tdapi.dart';

/// **ToggleGroupCallEnabledStartNotification** *(toggleGroupCallEnabledStartNotification)* - TDLib function
  ///
  /// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [enabledStartNotification]: New value of the enabled_start_notification setting.
  ///
  /// [Ok] is returned on completion.
class ToggleGroupCallEnabledStartNotification extends TdFunction {
  
  /// **ToggleGroupCallEnabledStartNotification** *(toggleGroupCallEnabledStartNotification)* - TDLib function
  ///
  /// Toggles whether the current user will receive a notification when the group call will start; scheduled group calls only.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [enabledStartNotification]: New value of the enabled_start_notification setting.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallEnabledStartNotification({
    required this.groupCallId,
    required this.enabledStartNotification,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// New value of the enabled_start_notification setting
  final bool enabledStartNotification;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "group_call_id": groupCallId,
      "enabled_start_notification": enabledStartNotification,
      "@extra": extra,
    };
  }
  
  ToggleGroupCallEnabledStartNotification copyWith({
    int? groupCallId,
    bool? enabledStartNotification,
  }) => ToggleGroupCallEnabledStartNotification(
    groupCallId: groupCallId ?? this.groupCallId,
    enabledStartNotification: enabledStartNotification ?? this.enabledStartNotification,
  );

  static const String constructor = 'toggleGroupCallEnabledStartNotification';
  
  @override
  String getConstructor() => constructor;
}
