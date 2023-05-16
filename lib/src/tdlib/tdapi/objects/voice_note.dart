part of '../tdapi.dart';

/// **VoiceNote** *(voiceNote)* - basic class
///
/// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel.
///
/// * [duration]: Duration of the voice note, in seconds; as defined by the sender.
/// * [waveform]: A waveform representation of the voice note in 5-bit format.
/// * [mimeType]: MIME type of the file; as defined by the sender.
/// * [speechRecognitionResult]: Result of speech recognition in the voice note; may be null *(optional)*.
/// * [voice]: File containing the voice note.
final class VoiceNote extends TdObject {
  
  /// **VoiceNote** *(voiceNote)* - basic class
  ///
  /// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel.
  ///
  /// * [duration]: Duration of the voice note, in seconds; as defined by the sender.
  /// * [waveform]: A waveform representation of the voice note in 5-bit format.
  /// * [mimeType]: MIME type of the file; as defined by the sender.
  /// * [speechRecognitionResult]: Result of speech recognition in the voice note; may be null *(optional)*.
  /// * [voice]: File containing the voice note.
  const VoiceNote({
    required this.duration,
    required this.waveform,
    required this.mimeType,
    this.speechRecognitionResult,
    required this.voice,
  });
  
  /// Duration of the voice note, in seconds; as defined by the sender
  final int duration;

  /// A waveform representation of the voice note in 5-bit format
  final String waveform;

  /// MIME type of the file; as defined by the sender
  final String mimeType;

  /// Result of speech recognition in the voice note; may be null
  final SpeechRecognitionResult? speechRecognitionResult;

  /// File containing the voice note
  final File voice;
  
  /// Parse from a json
  factory VoiceNote.fromJson(Map<String, dynamic> json) => VoiceNote(
    duration: json['duration'],
    waveform: json['waveform'],
    mimeType: json['mime_type'],
    speechRecognitionResult: json['speech_recognition_result'] == null ? null : SpeechRecognitionResult.fromJson(json['speech_recognition_result']),
    voice: File.fromJson(json['voice']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "duration": duration,
      "waveform": waveform,
      "mime_type": mimeType,
      "speech_recognition_result": speechRecognitionResult?.toJson(),
      "voice": voice.toJson(),
		};
	}

  
  VoiceNote copyWith({
    int? duration,
    String? waveform,
    String? mimeType,
    SpeechRecognitionResult? speechRecognitionResult,
    File? voice,
  }) => VoiceNote(
    duration: duration ?? this.duration,
    waveform: waveform ?? this.waveform,
    mimeType: mimeType ?? this.mimeType,
    speechRecognitionResult: speechRecognitionResult ?? this.speechRecognitionResult,
    voice: voice ?? this.voice,
  );

  static const String objectType = 'voiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
