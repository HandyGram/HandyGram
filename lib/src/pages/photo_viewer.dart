import 'package:flutter/material.dart';

class PhotoViewer extends StatelessWidget {
  const PhotoViewer({super.key, required this.photo});

  final ImageProvider photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          SizedBox.expand(
            child: InteractiveViewer(
              minScale: 0.5,
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image(
                  image: photo,
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: Align(
              alignment: Alignment.topCenter,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
