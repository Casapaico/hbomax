import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../core/theme.dart';

class ThumbnailCard extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final double? width;
  final double? height;
  final double borderRadius;

  const ThumbnailCard({
    super.key,
    required this.imageUrl,
    this.title,
    this.width,
    this.height,
    this.borderRadius = 6,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              width: width,
              height: height,
              color: HboTheme.surface,
              child: const Center(
                child: CircularProgressIndicator(
                  color: HboTheme.secondary,
                  strokeWidth: 1.5,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: width,
              height: height,
              color: HboTheme.surface,
              child: const Icon(Icons.image_not_supported, color: HboTheme.tertiary),
            ),
          ),
          if (title != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black87, Colors.transparent],
                  ),
                ),
                child: Text(
                  title!,
                  style: const TextStyle(
                    color: HboTheme.primary,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
