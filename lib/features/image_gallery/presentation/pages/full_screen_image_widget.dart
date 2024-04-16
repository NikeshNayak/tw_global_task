import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const FullScreenImage({
    super.key,
    required this.imageUrl,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(
        children: [
          GestureDetector(
            child: Center(
              child: Hero(
                tag: tag,
                child: CachedNetworkImage(
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                  imageUrl: imageUrl,
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.close,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
