import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';

@RoutePage()
class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({super.key, required this.article});

  final Article article;

  static const double _sidePadding = 16;
  static const double _imageBorderRadius = 27;
  static final _dateFormat = DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.router.maybePop,
          icon: SvgPicture.asset(AppIcons.arrowBack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _sidePadding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: AppFonts.bold33,
              ),
              const SizedBox(height: 10),
              Text(
                article.subtitle,
                style: AppFonts.reg27,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article.source,
                    style: AppFonts.reg19,
                  ),
                  Text(
                    _dateFormat.format(article.publishedAt),
                    style: AppFonts.reg19,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(_imageBorderRadius),
                child: CachedNetworkImage(imageUrl: article.imgUrl),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
