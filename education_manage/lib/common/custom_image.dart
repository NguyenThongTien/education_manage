import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: _imageNotFoundWidget(),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => _imageNotFoundWidget(),
      ),
    );
  }

  Widget _imageNotFoundWidget() {
    return Image.asset(
      'assets/img_not_found.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
