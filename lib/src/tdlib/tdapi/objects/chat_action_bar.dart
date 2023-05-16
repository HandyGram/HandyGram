part of '../tdapi.dart';

/// **ChatActionBar** *(chatActionBar)* - parent
///
/// Describes actions which must be possible to do through a chat action bar.
sealed class ChatActionBar extends TdObject {
  
  /// **ChatActionBar** *(chatActionBar)* - parent
  ///
  /// Describes actions which must be possible to do through a chat action bar.
  const ChatActionBar();
  
  /// a ChatActionBar return type can be :
  /// * [ChatActionBarReportSpam]
  /// * [ChatActionBarReportUnrelatedLocation]
  /// * [ChatActionBarInviteMembers]
  /// * [ChatActionBarReportAddBlock]
  /// * [ChatActionBarAddContact]
  /// * [ChatActionBarSharePhoneNumber]
  /// * [ChatActionBarJoinRequest]
  factory ChatActionBar.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatActionBarReportSpam.objectType:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarReportUnrelatedLocation.objectType:
        return ChatActionBarReportUnrelatedLocation.fromJson(json);
      case ChatActionBarInviteMembers.objectType:
        return ChatActionBarInviteMembers.fromJson(json);
      case ChatActionBarReportAddBlock.objectType:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.objectType:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.objectType:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      case ChatActionBarJoinRequest.objectType:
        return ChatActionBarJoinRequest.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatActionBar)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatActionBar copyWith();

  static const String objectType = 'chatActionBar';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarReportSpam** *(chatActionBarReportSpam)* - child of ChatActionBar
///
/// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.
///
/// * [canUnarchive]: If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings.
final class ChatActionBarReportSpam extends ChatActionBar {
  
  /// **ChatActionBarReportSpam** *(chatActionBarReportSpam)* - child of ChatActionBar
  ///
  /// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.
  ///
  /// * [canUnarchive]: If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings.
  const ChatActionBarReportSpam({
    required this.canUnarchive,
  });
  
  /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;
  
  /// Parse from a json
  factory ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) => ChatActionBarReportSpam(
    canUnarchive: json['can_unarchive'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "can_unarchive": canUnarchive,
		};
	}

  
  @override
  ChatActionBarReportSpam copyWith({
    bool? canUnarchive,
  }) => ChatActionBarReportSpam(
    canUnarchive: canUnarchive ?? this.canUnarchive,
  );

  static const String objectType = 'chatActionBarReportSpam';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarReportUnrelatedLocation** *(chatActionBarReportUnrelatedLocation)* - child of ChatActionBar
///
/// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation.
final class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  
  /// **ChatActionBarReportUnrelatedLocation** *(chatActionBarReportUnrelatedLocation)* - child of ChatActionBar
  ///
  /// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation.
  const ChatActionBarReportUnrelatedLocation();
  
  /// Parse from a json
  factory ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ChatActionBarReportUnrelatedLocation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionBarReportUnrelatedLocation copyWith() => const ChatActionBarReportUnrelatedLocation();

  static const String objectType = 'chatActionBarReportUnrelatedLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarInviteMembers** *(chatActionBarInviteMembers)* - child of ChatActionBar
///
/// The chat is a recently created group chat to which new members can be invited.
final class ChatActionBarInviteMembers extends ChatActionBar {
  
  /// **ChatActionBarInviteMembers** *(chatActionBarInviteMembers)* - child of ChatActionBar
  ///
  /// The chat is a recently created group chat to which new members can be invited.
  const ChatActionBarInviteMembers();
  
  /// Parse from a json
  factory ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json) => const ChatActionBarInviteMembers();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionBarInviteMembers copyWith() => const ChatActionBarInviteMembers();

  static const String objectType = 'chatActionBarInviteMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarReportAddBlock** *(chatActionBarReportAddBlock)* - child of ChatActionBar
///
/// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method toggleMessageSenderIsBlocked,. or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.
///
/// * [canUnarchive]: If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings.
/// * [distance]: If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users.
final class ChatActionBarReportAddBlock extends ChatActionBar {
  
  /// **ChatActionBarReportAddBlock** *(chatActionBarReportAddBlock)* - child of ChatActionBar
  ///
  /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method toggleMessageSenderIsBlocked,. or the other user can be added to the contact list using the method addContact. If the chat is a private chat with a user with an emoji status, then a notice about emoji status usage must be shown.
  ///
  /// * [canUnarchive]: If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings.
  /// * [distance]: If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users.
  const ChatActionBarReportAddBlock({
    required this.canUnarchive,
    required this.distance,
  });
  
  /// If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  /// If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users
  final int distance;
  
  /// Parse from a json
  factory ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) => ChatActionBarReportAddBlock(
    canUnarchive: json['can_unarchive'],
    distance: json['distance'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "can_unarchive": canUnarchive,
      "distance": distance,
		};
	}

  
  @override
  ChatActionBarReportAddBlock copyWith({
    bool? canUnarchive,
    int? distance,
  }) => ChatActionBarReportAddBlock(
    canUnarchive: canUnarchive ?? this.canUnarchive,
    distance: distance ?? this.distance,
  );

  static const String objectType = 'chatActionBarReportAddBlock';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarAddContact** *(chatActionBarAddContact)* - child of ChatActionBar
///
/// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact.
final class ChatActionBarAddContact extends ChatActionBar {
  
  /// **ChatActionBarAddContact** *(chatActionBarAddContact)* - child of ChatActionBar
  ///
  /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact.
  const ChatActionBarAddContact();
  
  /// Parse from a json
  factory ChatActionBarAddContact.fromJson(Map<String, dynamic> json) => const ChatActionBarAddContact();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionBarAddContact copyWith() => const ChatActionBarAddContact();

  static const String objectType = 'chatActionBarAddContact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarSharePhoneNumber** *(chatActionBarSharePhoneNumber)* - child of ChatActionBar
///
/// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber.
final class ChatActionBarSharePhoneNumber extends ChatActionBar {
  
  /// **ChatActionBarSharePhoneNumber** *(chatActionBarSharePhoneNumber)* - child of ChatActionBar
  ///
  /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber.
  const ChatActionBarSharePhoneNumber();
  
  /// Parse from a json
  factory ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json) => const ChatActionBarSharePhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatActionBarSharePhoneNumber copyWith() => const ChatActionBarSharePhoneNumber();

  static const String objectType = 'chatActionBarSharePhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatActionBarJoinRequest** *(chatActionBarJoinRequest)* - child of ChatActionBar
///
/// The chat is a private chat with an administrator of a chat to which the user sent join request.
///
/// * [title]: Title of the chat to which the join request was sent.
/// * [isChannel]: True, if the join request was sent to a channel chat.
/// * [requestDate]: Point in time (Unix timestamp) when the join request was sent.
final class ChatActionBarJoinRequest extends ChatActionBar {
  
  /// **ChatActionBarJoinRequest** *(chatActionBarJoinRequest)* - child of ChatActionBar
  ///
  /// The chat is a private chat with an administrator of a chat to which the user sent join request.
  ///
  /// * [title]: Title of the chat to which the join request was sent.
  /// * [isChannel]: True, if the join request was sent to a channel chat.
  /// * [requestDate]: Point in time (Unix timestamp) when the join request was sent.
  const ChatActionBarJoinRequest({
    required this.title,
    required this.isChannel,
    required this.requestDate,
  });
  
  /// Title of the chat to which the join request was sent
  final String title;

  /// True, if the join request was sent to a channel chat
  final bool isChannel;

  /// Point in time (Unix timestamp) when the join request was sent
  final int requestDate;
  
  /// Parse from a json
  factory ChatActionBarJoinRequest.fromJson(Map<String, dynamic> json) => ChatActionBarJoinRequest(
    title: json['title'],
    isChannel: json['is_channel'],
    requestDate: json['request_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "is_channel": isChannel,
      "request_date": requestDate,
		};
	}

  
  @override
  ChatActionBarJoinRequest copyWith({
    String? title,
    bool? isChannel,
    int? requestDate,
  }) => ChatActionBarJoinRequest(
    title: title ?? this.title,
    isChannel: isChannel ?? this.isChannel,
    requestDate: requestDate ?? this.requestDate,
  );

  static const String objectType = 'chatActionBarJoinRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
