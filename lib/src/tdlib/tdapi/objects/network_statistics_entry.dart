part of '../tdapi.dart';

/// **NetworkStatisticsEntry** *(networkStatisticsEntry)* - parent
  ///
  /// Contains statistics about network usage.
class NetworkStatisticsEntry extends TdObject {
  
  /// **NetworkStatisticsEntry** *(networkStatisticsEntry)* - parent
  ///
  /// Contains statistics about network usage.
  const NetworkStatisticsEntry();
  
  /// a NetworkStatisticsEntry return type can be :
  /// * [NetworkStatisticsEntryFile]
  /// * [NetworkStatisticsEntryCall]
  factory NetworkStatisticsEntry.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NetworkStatisticsEntryFile.constructor:
        return NetworkStatisticsEntryFile.fromJson(json);
      case NetworkStatisticsEntryCall.constructor:
        return NetworkStatisticsEntryCall.fromJson(json);
      default:
        return const NetworkStatisticsEntry();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NetworkStatisticsEntry copyWith() => const NetworkStatisticsEntry();

  static const String constructor = 'networkStatisticsEntry';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkStatisticsEntryFile** *(networkStatisticsEntryFile)* - child of NetworkStatisticsEntry
  ///
  /// Contains information about the total amount of data that was used to send and receive files.
  ///
  /// * [fileType]: Type of the file the data is part of; pass null if the data isn't related to files *(optional)*.
  /// * [networkType]: Type of the network the data was sent through. Call setNetworkType to maintain the actual network type.
  /// * [sentBytes]: Total number of bytes sent.
  /// * [receivedBytes]: Total number of bytes received.
class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  
  /// **NetworkStatisticsEntryFile** *(networkStatisticsEntryFile)* - child of NetworkStatisticsEntry
  ///
  /// Contains information about the total amount of data that was used to send and receive files.
  ///
  /// * [fileType]: Type of the file the data is part of; pass null if the data isn't related to files *(optional)*.
  /// * [networkType]: Type of the network the data was sent through. Call setNetworkType to maintain the actual network type.
  /// * [sentBytes]: Total number of bytes sent.
  /// * [receivedBytes]: Total number of bytes received.
  const NetworkStatisticsEntryFile({
    this.fileType,
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
  });
  
  /// Type of the file the data is part of; pass null if the data isn't related to files
  final FileType? fileType;

  /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// Total number of bytes sent
  final int sentBytes;

  /// Total number of bytes received
  final int receivedBytes;
  
  /// Parse from a json
  factory NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryFile(
    fileType: json['file_type'] == null ? null : FileType.fromJson(json['file_type']),
    networkType: NetworkType.fromJson(json['network_type']),
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_type": fileType?.toJson(),
      "network_type": networkType.toJson(),
      "sent_bytes": sentBytes,
      "received_bytes": receivedBytes,
    };
  }
  
  @override
  NetworkStatisticsEntryFile copyWith({
    FileType? fileType,
    NetworkType? networkType,
    int? sentBytes,
    int? receivedBytes,
  }) => NetworkStatisticsEntryFile(
    fileType: fileType ?? this.fileType,
    networkType: networkType ?? this.networkType,
    sentBytes: sentBytes ?? this.sentBytes,
    receivedBytes: receivedBytes ?? this.receivedBytes,
  );

  static const String constructor = 'networkStatisticsEntryFile';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkStatisticsEntryCall** *(networkStatisticsEntryCall)* - child of NetworkStatisticsEntry
  ///
  /// Contains information about the total amount of data that was used for calls.
  ///
  /// * [networkType]: Type of the network the data was sent through. Call setNetworkType to maintain the actual network type.
  /// * [sentBytes]: Total number of bytes sent.
  /// * [receivedBytes]: Total number of bytes received.
  /// * [duration]: Total call duration, in seconds.
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  
  /// **NetworkStatisticsEntryCall** *(networkStatisticsEntryCall)* - child of NetworkStatisticsEntry
  ///
  /// Contains information about the total amount of data that was used for calls.
  ///
  /// * [networkType]: Type of the network the data was sent through. Call setNetworkType to maintain the actual network type.
  /// * [sentBytes]: Total number of bytes sent.
  /// * [receivedBytes]: Total number of bytes received.
  /// * [duration]: Total call duration, in seconds.
  const NetworkStatisticsEntryCall({
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });
  
  /// Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// Total number of bytes sent
  final int sentBytes;

  /// Total number of bytes received
  final int receivedBytes;

  /// Total call duration, in seconds
  final double duration;
  
  /// Parse from a json
  factory NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryCall(
    networkType: NetworkType.fromJson(json['network_type']),
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
    duration: json['duration'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "network_type": networkType.toJson(),
      "sent_bytes": sentBytes,
      "received_bytes": receivedBytes,
      "duration": duration,
    };
  }
  
  @override
  NetworkStatisticsEntryCall copyWith({
    NetworkType? networkType,
    int? sentBytes,
    int? receivedBytes,
    double? duration,
  }) => NetworkStatisticsEntryCall(
    networkType: networkType ?? this.networkType,
    sentBytes: sentBytes ?? this.sentBytes,
    receivedBytes: receivedBytes ?? this.receivedBytes,
    duration: duration ?? this.duration,
  );

  static const String constructor = 'networkStatisticsEntryCall';
  
  @override
  String getConstructor() => constructor;
}
