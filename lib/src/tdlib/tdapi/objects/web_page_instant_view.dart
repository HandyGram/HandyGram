part of '../tdapi.dart';

/// **WebPageInstantView** *(webPageInstantView)* - basic class
///
/// Describes an instant view page for a web page.
///
/// * [pageBlocks]: Content of the web page.
/// * [viewCount]: Number of the instant view views; 0 if unknown.
/// * [version]: Version of the instant view; currently, can be 1 or 2.
/// * [isRtl]: True, if the instant view must be shown from right to left.
/// * [isFull]: True, if the instant view contains the full page. A network request might be needed to get the full web page instant view.
/// * [feedbackLink]: An internal link to be opened to leave feedback about the instant view.
final class WebPageInstantView extends TdObject {
  
  /// **WebPageInstantView** *(webPageInstantView)* - basic class
  ///
  /// Describes an instant view page for a web page.
  ///
  /// * [pageBlocks]: Content of the web page.
  /// * [viewCount]: Number of the instant view views; 0 if unknown.
  /// * [version]: Version of the instant view; currently, can be 1 or 2.
  /// * [isRtl]: True, if the instant view must be shown from right to left.
  /// * [isFull]: True, if the instant view contains the full page. A network request might be needed to get the full web page instant view.
  /// * [feedbackLink]: An internal link to be opened to leave feedback about the instant view.
  const WebPageInstantView({
    required this.pageBlocks,
    required this.viewCount,
    required this.version,
    required this.isRtl,
    required this.isFull,
    required this.feedbackLink,
    this.extra,
    this.clientId,
  });
  
  /// Content of the web page
  final List<PageBlock> pageBlocks;

  /// Number of the instant view views; 0 if unknown
  final int viewCount;

  /// Version of the instant view; currently, can be 1 or 2
  final int version;

  /// True, if the instant view must be shown from right to left
  final bool isRtl;

  /// True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
  final bool isFull;

  /// An internal link to be opened to leave feedback about the instant view
  final InternalLinkType feedbackLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory WebPageInstantView.fromJson(Map<String, dynamic> json) => WebPageInstantView(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    viewCount: json['view_count'],
    version: json['version'],
    isRtl: json['is_rtl'],
    isFull: json['is_full'],
    feedbackLink: InternalLinkType.fromJson(json['feedback_link']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "view_count": viewCount,
      "version": version,
      "is_rtl": isRtl,
      "is_full": isFull,
      "feedback_link": feedbackLink.toJson(),
		};
	}

  
  WebPageInstantView copyWith({
    List<PageBlock>? pageBlocks,
    int? viewCount,
    int? version,
    bool? isRtl,
    bool? isFull,
    InternalLinkType? feedbackLink,
    dynamic extra,
    int? clientId,
  }) => WebPageInstantView(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    viewCount: viewCount ?? this.viewCount,
    version: version ?? this.version,
    isRtl: isRtl ?? this.isRtl,
    isFull: isFull ?? this.isFull,
    feedbackLink: feedbackLink ?? this.feedbackLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'webPageInstantView';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
