/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/providers/templates/streamed_provider.dart';

sealed class AllScopesNotificationSettingsState {
  const AllScopesNotificationSettingsState();
}

class AllScopesNotificationSettingsNotReady
    extends AllScopesNotificationSettingsState {
  const AllScopesNotificationSettingsNotReady();
}

class AllScopesNotificationSettings extends AllScopesNotificationSettingsState {
  final td.ScopeNotificationSettings channels, groups, privateChats;

  AllScopesNotificationSettings copyWith({
    td.ScopeNotificationSettings? channels,
    td.ScopeNotificationSettings? groups,
    td.ScopeNotificationSettings? privateChats,
  }) =>
      AllScopesNotificationSettings(
        channels: channels ?? this.channels,
        groups: groups ?? this.groups,
        privateChats: privateChats ?? this.privateChats,
      );

  const AllScopesNotificationSettings({
    required this.channels,
    required this.groups,
    required this.privateChats,
  });
}

class ScopeNotificationSettingsProvider
    extends TdlibStreamedDataProvider<AllScopesNotificationSettingsState> {
  static const tag = "ScopeNotificationSettingsProvider";

  @override
  final initialState = const AllScopesNotificationSettingsNotReady();

  final Completer<AllScopesNotificationSettings> _initial = Completer();

  Future<AllScopesNotificationSettings> get() async {
    if (state is AllScopesNotificationSettings) {
      return state as AllScopesNotificationSettings;
    }
    return _initial.future;
  }

  // ScopeNotificationSettings is just a data container here,
  // method returns real chat notification settings
  Future<td.ScopeNotificationSettings> getForChat({
    int? chatId,
    td.Chat? chatObj,
  }) async {
    assert(chatId != null || chatObj != null);
    final scopes = await get();
    final chat = chatObj ?? await box.user.providers.chats.getChat(chatId!);
    final settings = chat.notificationSettings;
    final scopeSettings = switch (chat.type) {
      td.ChatTypeBasicGroup() => scopes.groups,
      td.ChatTypePrivate() || td.ChatTypeSecret() => scopes.privateChats,
      td.ChatTypeSupergroup(isChannel: final isChannel) =>
        isChannel ? scopes.channels : scopes.groups,
    };
    return td.ScopeNotificationSettings(
      muteFor:
          settings.useDefaultMuteFor ? scopeSettings.muteFor : settings.muteFor,
      soundId:
          settings.useDefaultSound ? scopeSettings.soundId : settings.soundId,
      storySoundId: settings.useDefaultStorySound
          ? scopeSettings.storySoundId
          : settings.storySoundId,
      disableMentionNotifications:
          settings.useDefaultDisableMentionNotifications
              ? scopeSettings.disableMentionNotifications
              : settings.disableMentionNotifications,
      disablePinnedMessageNotifications:
          settings.useDefaultDisablePinnedMessageNotifications
              ? scopeSettings.disablePinnedMessageNotifications
              : settings.disablePinnedMessageNotifications,
      muteStories: settings.useDefaultMuteStories
          ? scopeSettings.muteStories
          : settings.muteStories,
      showPreview: settings.useDefaultShowPreview
          ? scopeSettings.showPreview
          : settings.showPreview,
      showStorySender: settings.useDefaultShowStorySender
          ? scopeSettings.showStorySender
          : settings.showStorySender,
      useDefaultMuteStories: scopeSettings.useDefaultMuteStories,
    );
  }

  @override
  Future<void> onAuthorized() async {
    final channels = await box.invoke(const td.GetScopeNotificationSettings(
      scope: td.NotificationSettingsScopeChannelChats(),
    ));
    final groups = await box.invoke(const td.GetScopeNotificationSettings(
      scope: td.NotificationSettingsScopeGroupChats(),
    ));
    final privateChats = await box.invoke(const td.GetScopeNotificationSettings(
      scope: td.NotificationSettingsScopePrivateChats(),
    ));
    if (channels is! td.ScopeNotificationSettings ||
        groups is! td.ScopeNotificationSettings ||
        privateChats is! td.ScopeNotificationSettings) {
      throw const TdlibCoreException(
          tag, "Failed to get all scopes notification settings");
    }
    reportState(AllScopesNotificationSettings(
      channels: channels,
      groups: groups,
      privateChats: privateChats,
    ));
    _initial.complete(state as AllScopesNotificationSettings);
  }

  @override
  void updatesListener(td.TdObject update) {
    if (update is! td.UpdateScopeNotificationSettings) return;
    if (state is! AllScopesNotificationSettings) return;

    final settings = state as AllScopesNotificationSettings;
    reportState(switch (update.scope) {
      td.NotificationSettingsScopeChannelChats() =>
        settings.copyWith(channels: update.notificationSettings),
      td.NotificationSettingsScopeGroupChats() =>
        settings.copyWith(groups: update.notificationSettings),
      td.NotificationSettingsScopePrivateChats() =>
        settings.copyWith(privateChats: update.notificationSettings),
    });
  }
}
