import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/tdlib/client/td/parameters.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:path_provider/path_provider.dart';

class _StorageStats {
  final int databaseSize;
  final int cacheSize;
  final int totalDiskSize;
  final int freeSpace;
  final int totalHgSize;

  const _StorageStats({
    required this.databaseSize,
    required this.cacheSize,
    required this.totalDiskSize,
    required this.freeSpace,
    required this.totalHgSize,
  });
}

class StorageStats extends StatefulWidget {
  const StorageStats({super.key});

  @override
  State<StorageStats> createState() => _StorageStatsState();
}

class _StorageStatsState extends State<StorageStats> {
  _StorageStats? stats;

  Future<int> _getDirSize(Directory dir) async {
    final stat = await dir.stat();
    int totalSize = stat.size;
    await for (final entry in dir.list(recursive: true, followLinks: false)) {
      final stat = await entry.stat();
      totalSize += stat.size;
    }
    return totalSize;
  }

  Future<void> _loadStats() async {
    final databasesRoot = Directory(await TdlibParameters.getDatabasesRoot());
    final cacheRoot = await getApplicationDocumentsDirectory();
    final storageSize = await HandyNatives().getStorageStats();
    final dataRoot = (await getApplicationSupportDirectory()).parent;
    stats = _StorageStats(
      cacheSize: await _getDirSize(cacheRoot),
      databaseSize: await _getDirSize(databasesRoot),
      freeSpace: storageSize?.free ?? 1,
      totalDiskSize: storageSize?.total ?? 1,
      totalHgSize: await _getDirSize(dataRoot),
    );

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    _loadStats();
    super.initState();
  }

  final style = TextStyles.active.labelLarge?.copyWith(
    color: ColorStyles.active.onSurface,
  );
  final styleSecondary = TextStyles.active.labelLarge?.copyWith(
    color: ColorStyles.active.secondary,
  );

  Widget _part({
    required double diameter,
    required Color color,
    required int size,
    required String name,
  }) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Paddings.tilesHorizontalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: diameter,
              height: diameter,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            SizedBox(width: Paddings.betweenSimilarElements),
            Text(name, style: style),
            SizedBox(width: Paddings.betweenSimilarElements),
            Text(
              "(${(size / 1024 / 1024 / 1024).toStringAsFixed(1)} GB)",
              style: styleSecondary,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final stats = this.stats;
    final commonHeight = Scaling.factor * 13;
    final commonWidth =
        Scaling.screenSize.width - Paddings.tilesHorizontalPadding * 2;

    double? nonHgPercentage, hgPercentage;
    int? nonHgSize;
    if (stats != null) {
      // TODO: rework. inaccurate
      nonHgSize = stats.totalDiskSize - (stats.freeSpace + stats.totalHgSize);

      nonHgPercentage = nonHgSize / stats.totalDiskSize;
      hgPercentage = stats.totalHgSize / stats.totalDiskSize;
    }

    _loadStats();

    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: commonWidth,
              height: commonHeight,
              decoration: BoxDecoration(
                color: stats == null
                    ? ColorStyles.active.surface
                    : ColorStyles.active.onPrimary,
                borderRadius: BorderRadius.circular(commonHeight),
              ),
            ),
            if (stats != null)
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: commonWidth * (nonHgPercentage! + hgPercentage!),
                    height: commonHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(commonHeight),
                      color: ColorStyles.active.onSurfaceVariant,
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: commonHeight / 2,
                    ),
                    child: Container(
                      width: commonWidth * hgPercentage,
                      height: commonHeight,
                      decoration: BoxDecoration(
                        color: ColorStyles.active.primary,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
        SizedBox(height: Paddings.betweenSimilarElements),
        if (stats != null) ...[
          _part(
            diameter: commonHeight,
            color: ColorStyles.active.onSurfaceVariant,
            size: nonHgSize!,
            name: AppLocalizations.current.storageNonHandyGram,
          ),
          _part(
            diameter: commonHeight,
            color: ColorStyles.active.primary,
            size: stats.totalHgSize,
            name: AppLocalizations.current.storageHandyGramData,
          ),
          _part(
            diameter: commonHeight,
            color: ColorStyles.active.onPrimary,
            size: stats.freeSpace,
            name: AppLocalizations.current.storageFreeSpace,
          ),
        ] else
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Paddings.tilesHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: commonHeight,
                  height: commonHeight,
                  child: CircularProgressIndicator(
                    strokeWidth: commonHeight / 4,
                  ),
                ),
                SizedBox(width: Paddings.betweenSimilarElements),
                Text("Loading...", style: style),
              ],
            ),
          ),
      ],
    );
  }
}
