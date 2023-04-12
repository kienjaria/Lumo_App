import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageListView extends StatefulWidget {
  final int startIndex;
  const ImageListView({super.key, required this.startIndex});

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.60,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: 'assets/images/grocery-store-icn.webp',
                imageBuilder: (context, imageProvider) {
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 8.0,
                      left: 8.0,
                      top: 10,
                    ),
                    height: MediaQuery.of(context).size.height * 0.40,
                  );
                },
              );
            }),
      ),
    );
  }
}
