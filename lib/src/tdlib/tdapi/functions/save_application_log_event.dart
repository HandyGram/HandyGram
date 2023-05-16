part of '../tdapi.dart';

/// **SaveApplicationLogEvent** *(saveApplicationLogEvent)* - TDLib function
///
/// Saves application log event on the server. Can be called before authorization.
///
/// * [type]: Event type.
/// * [chatId]: Optional chat identifier, associated with the event.
/// * [data]: The log event data.
///
/// [Ok] is returned on completion.
final class SaveApplicationLogEvent extends TdFunction {
  
  /// **SaveApplicationLogEvent** *(saveApplicationLogEvent)* - TDLib function
  ///
  /// Saves application log event on the server. Can be called before authorization.
  ///
  /// * [type]: Event type.
  /// * [chatId]: Optional chat identifier, associated with the event.
  /// * [data]: The log event data.
  ///
  /// [Ok] is returned on completion.
  const SaveApplicationLogEvent({
    required this.type,
    required this.chatId,
    required this.data,
  });
  
  /// Event type 
  final String type;

  /// Optional chat identifier, associated with the event 
  final int chatId;

  /// The log event data
  final JsonValue data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "type": type,
      "chat_id": chatId,
      "data": data.toJson(),
      "@extra": extra,
		};
	}

  
  SaveApplicationLogEvent copyWith({
    String? type,
    int? chatId,
    JsonValue? data,
  }) => SaveApplicationLogEvent(
    type: type ?? this.type,
    chatId: chatId ?? this.chatId,
    data: data ?? this.data,
  );

  static const String objectType = 'saveApplicationLogEvent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
