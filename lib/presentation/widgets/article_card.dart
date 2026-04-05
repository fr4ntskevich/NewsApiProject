import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';
import 'package:news_api_project/presentation/theme/app_shadows.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.imageUrl,
    required this.onTap,
    this.isFavorite,
    this.onFavoriteToggle,
  });

  static const double _borderRadius = 12;
  static const double _borderWidth = 0.5;
  static const double _contentHorizontalPadding = 10;
  static const double _contentVerticalPadding = 5;
  static const int _textMaxLines = 1;
  static const double _imageWidth = 123;
  static const double _imageHeight = 112;

  final String title;
  final String subtitle;
  final String date;
  final String imageUrl;
  final VoidCallback onTap;
  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;

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
            AppShadows.card(context.colors.shadow),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ArticleImage(imageUrl: imageUrl),
            Expanded(
              child: SizedBox(
                height: _imageHeight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: _contentHorizontalPadding,
                    vertical: _contentVerticalPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
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
                              ],
                            ),
                          ),
                          if (isFavorite != null && onFavoriteToggle != null)
                            IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: onFavoriteToggle,
                              icon: SvgPicture.asset(
                                isFavorite!
                                    ? AppIcons.starFilled
                                    : AppIcons.starOutlined,
                              ),
                            ),
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentGeometry.bottomRight,
                          child: Text(
                            date,
                            style: AppFonts.reg17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticleImage extends StatelessWidget {
  const _ArticleImage({this.imageUrl});

  static const double _indicatorStrokeWidth = 2;
  static const double _errorIconSize = 32;
  static const _radius = BorderRadius.only(
    topLeft: Radius.circular(ArticleCard._borderRadius),
    bottomLeft: Radius.circular(ArticleCard._borderRadius),
  );

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _radius,
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        width: ArticleCard._imageWidth,
        height: ArticleCard._imageHeight,
        fit: BoxFit.cover,
        placeholder: (context, url) => const SizedBox(
          width: ArticleCard._imageWidth,
          height: ArticleCard._imageHeight,
          child: Center(
            child: CircularProgressIndicator(strokeWidth: _indicatorStrokeWidth),
          ),
        ),
        errorWidget: (context, url, error) => const SizedBox(
          width: ArticleCard._imageWidth,
          height: ArticleCard._imageHeight,
          child: Center(
            child: Icon(Icons.broken_image_outlined, size: _errorIconSize),
          ),
        ),
      ),
    );
  }
}
