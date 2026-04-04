import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.imageUrl,
    required this.onTap,
  });

  static const double _borderRadius = 12;
  static const double _borderWidth = 0.5;
  static const Offset _shadowOffset = Offset(0, 3);
  static const double _shadowBlurRadius = 6.1;
  static const double _contentHorizontalPadding = 12;
  static const double _contentVerticalPadding = 6;
  static const int _textMaxLines = 1;

  final String title;
  final String subtitle;
  final String date;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(_borderRadius),
          border: Border.all(
            color: context.colors.border,
            width: _borderWidth,
          ),
          boxShadow: [
            BoxShadow(
              color: context.colors.shadow,
              offset: _shadowOffset,
              blurRadius: _shadowBlurRadius,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _NewsImage(imageUrl: imageUrl),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _contentHorizontalPadding,
                  vertical: _contentVerticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppFonts.bold24,
                      maxLines: _textMaxLines,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subtitle,
                      style: AppFonts.reg19,
                      maxLines: _textMaxLines,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        date,
                        style: AppFonts.reg17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NewsImage extends StatelessWidget {
  const _NewsImage({this.imageUrl});

  static const double _size = 110;
  static const double _indicatorStrokeWidth = 2;
  static const double _errorIconSize = 32;
  static const _radius = BorderRadius.only(
    topLeft: Radius.circular(NewsCard._borderRadius),
    bottomLeft: Radius.circular(NewsCard._borderRadius),
  );

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _radius,
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        width: _size,
        height: _size,
        fit: BoxFit.cover,
        placeholder: (context, url) => const SizedBox(
          width: _size,
          height: _size,
          child: Center(
            child: CircularProgressIndicator(strokeWidth: _indicatorStrokeWidth),
          ),
        ),
        errorWidget: (context, url, error) => const SizedBox(
          width: _size,
          height: _size,
          child: Center(
            child: Icon(Icons.broken_image_outlined, size: _errorIconSize),
          ),
        ),
      ),
    );
  }
}
