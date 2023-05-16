part of '../tdapi.dart';

/// **CreateCall** *(createCall)* - TDLib function
///
/// Creates a new call.
///
/// * [userId]: Identifier of the user to be called.
/// * [protocol]: The call protocols supported by the application.
/// * [isVideo]: Pass true to create a video call.
///
/// [CallId] is returned on completion.
final class CreateCall extends TdFunction {
  
  /// **CreateCall** *(createCall)* - TDLib function
  ///
  /// Creates a new call.
  ///
  /// * [userId]: Identifier of the user to be called.
  /// * [protocol]: The call protocols supported by the application.
  /// * [isVideo]: Pass true to create a video call.
  ///
  /// [CallId] is returned on completion.
  const CreateCall({
    required this.userId,
    required this.protocol,
    required this.isVideo,
  });
  
  /// Identifier of the user to be called 
  final int userId;

  /// The call protocols supported by the application 
  final CallProtocol protocol;

  /// Pass true to create a video call
  final bool isVideo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "protocol": protocol.toJson(),
      "is_video": isVideo,
      "@extra": extra,
		};
	}

  
  CreateCall copyWith({
    int? userId,
    CallProtocol? protocol,
    bool? isVideo,
  }) => CreateCall(
    userId: userId ?? this.userId,
    protocol: protocol ?? this.protocol,
    isVideo: isVideo ?? this.isVideo,
  );

  static const String objectType = 'createCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
