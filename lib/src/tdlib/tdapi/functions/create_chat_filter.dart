part of '../tdapi.dart';

/// **CreateChatFilter** *(createChatFilter)* - TDLib function
  ///
  /// Creates new chat filter. Returns information about the created chat filter. There can be up to getOption("chat_filter_count_max") chat filters, but the limit can be increased with Telegram Premium.
  ///
  /// * [filter]: Chat filter.
  ///
  /// [ChatFilterInfo] is returned on completion.
class CreateChatFilter extends TdFunction {
  
  /// **CreateChatFilter** *(createChatFilter)* - TDLib function
  ///
  /// Creates new chat filter. Returns information about the created chat filter. There can be up to getOption("chat_filter_count_max") chat filters, but the limit can be increased with Telegram Premium.
  ///
  /// * [filter]: Chat filter.
  ///
  /// [ChatFilterInfo] is returned on completion.
  const CreateChatFilter({
    required this.filter,
  });
  
  /// Chat filter
  final ChatFilter filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "filter": filter.toJson(),
      "@extra": extra,
    };
  }
  
  CreateChatFilter copyWith({
    ChatFilter? filter,
  }) => CreateChatFilter(
    filter: filter ?? this.filter,
  );

  static const String constructor = 'createChatFilter';
  
  @override
  String getConstructor() => constructor;
}
