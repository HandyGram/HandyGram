import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/photosize.dart';

class PhotoViewer extends StatelessWidget {
  const PhotoViewer({
    super.key,
    required this.photo,
  });

  final td.Photo photo;

  Future<File?> get _file async {
    final tdFile = await CurrentAccount.providers.files.download(
      fileId: photo.sizes.largest.photo.id,
      priority: 1,
      synchronous: true,
    );

    return File(tdFile.local.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: InteractiveViewer(
          child: AspectRatio(aspectRatio: photo.sizes.largest.aspectRatio,child:FutureBuilder(
            future: _file,
            builder: (context, snapshot) {
              final file = snapshot.data;
              if (file == null) {
                return Container(
                  color: ColorStyles.active.onSurfaceVariant,
                  child: const SizedBox.expand(
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                );
              }

              return Image.file(
                file,
                filterQuality: FilterQuality.high,
                fit: BoxFit.contain,
              );
            },
          ),),
        ),
      ),
    );
  }
}
