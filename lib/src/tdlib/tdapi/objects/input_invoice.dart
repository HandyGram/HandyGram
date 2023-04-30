part of '../tdapi.dart';

/// **InputInvoice** *(inputInvoice)* - parent
  ///
  /// Describes an invoice to process.
class InputInvoice extends TdObject {
  
  /// **InputInvoice** *(inputInvoice)* - parent
  ///
  /// Describes an invoice to process.
  const InputInvoice();
  
  /// a InputInvoice return type can be :
  /// * [InputInvoiceMessage]
  /// * [InputInvoiceName]
  factory InputInvoice.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputInvoiceMessage.constructor:
        return InputInvoiceMessage.fromJson(json);
      case InputInvoiceName.constructor:
        return InputInvoiceName.fromJson(json);
      default:
        return const InputInvoice();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputInvoice copyWith() => const InputInvoice();

  static const String constructor = 'inputInvoice';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInvoiceMessage** *(inputInvoiceMessage)* - child of InputInvoice
  ///
  /// An invoice from a message of the type messageInvoice.
  ///
  /// * [chatId]: Chat identifier of the message.
  /// * [messageId]: Message identifier.
class InputInvoiceMessage extends InputInvoice {
  
  /// **InputInvoiceMessage** *(inputInvoiceMessage)* - child of InputInvoice
  ///
  /// An invoice from a message of the type messageInvoice.
  ///
  /// * [chatId]: Chat identifier of the message.
  /// * [messageId]: Message identifier.
  const InputInvoiceMessage({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier of the message 
  final int chatId;

  /// Message identifier
  final int messageId;
  
  /// Parse from a json
  factory InputInvoiceMessage.fromJson(Map<String, dynamic> json) => InputInvoiceMessage(
    chatId: json['chat_id'],
    messageId: json['message_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
  
  @override
  InputInvoiceMessage copyWith({
    int? chatId,
    int? messageId,
  }) => InputInvoiceMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String constructor = 'inputInvoiceMessage';
  
  @override
  String getConstructor() => constructor;
}


/// **InputInvoiceName** *(inputInvoiceName)* - child of InputInvoice
  ///
  /// An invoice from a link of the type internalLinkTypeInvoice.
  ///
  /// * [name]: Name of the invoice.
class InputInvoiceName extends InputInvoice {
  
  /// **InputInvoiceName** *(inputInvoiceName)* - child of InputInvoice
  ///
  /// An invoice from a link of the type internalLinkTypeInvoice.
  ///
  /// * [name]: Name of the invoice.
  const InputInvoiceName({
    required this.name,
  });
  
  /// Name of the invoice
  final String name;
  
  /// Parse from a json
  factory InputInvoiceName.fromJson(Map<String, dynamic> json) => InputInvoiceName(
    name: json['name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "name": name,
    };
  }
  
  @override
  InputInvoiceName copyWith({
    String? name,
  }) => InputInvoiceName(
    name: name ?? this.name,
  );

  static const String constructor = 'inputInvoiceName';
  
  @override
  String getConstructor() => constructor;
}
