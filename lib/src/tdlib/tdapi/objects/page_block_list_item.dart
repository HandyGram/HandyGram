part of '../tdapi.dart';

/// **PageBlockListItem** *(pageBlockListItem)* - basic class
///
/// Describes an item of a list page block.
///
/// * [label]: Item label.
/// * [pageBlocks]: Item blocks.
final class PageBlockListItem extends TdObject {
  
  /// **PageBlockListItem** *(pageBlockListItem)* - basic class
  ///
  /// Describes an item of a list page block.
  ///
  /// * [label]: Item label.
  /// * [pageBlocks]: Item blocks.
  const PageBlockListItem({
    required this.label,
    required this.pageBlocks,
  });
  
  /// Item label 
  final String label;

  /// Item blocks
  final List<PageBlock> pageBlocks;
  
  /// Parse from a json
  factory PageBlockListItem.fromJson(Map<String, dynamic> json) => PageBlockListItem(
    label: json['label'],
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "label": label,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
		};
	}

  
  PageBlockListItem copyWith({
    String? label,
    List<PageBlock>? pageBlocks,
  }) => PageBlockListItem(
    label: label ?? this.label,
    pageBlocks: pageBlocks ?? this.pageBlocks,
  );

  static const String objectType = 'pageBlockListItem';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
