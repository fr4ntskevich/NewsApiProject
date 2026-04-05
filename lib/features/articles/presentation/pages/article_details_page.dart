import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_state.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';

@RoutePage()
class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({super.key, required this.article});

  final Article article;

  static const double _sidePadding = 16;
  static const double _imageBorderRadius = 27;
  static final _dateFormat = DateFormat('dd.MM.yyyy');
  static const Offset _shadowOffset = Offset(0, 3);
  static const double _shadowBlurRadius = 6.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: context.router.maybePop,
          icon: SvgPicture.asset(AppIcons.arrowBack),
        ),
        actions: [
          BlocBuilder<FavoritesCubit, FavoritesState>(
            builder: (context, state) {
              final isFavorite = context.read<FavoritesCubit>().isFavorite(article);
              return IconButton(
                padding: const EdgeInsets.only(right: _sidePadding),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => context.read<FavoritesCubit>().toggle(article),
                icon: SvgPicture.asset(
                  isFavorite ? AppIcons.starFilled : AppIcons.starOutlined,
                ),
              );
            },
          ),
        ],
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
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.shadow,
                      offset: _shadowOffset,
                      blurRadius: _shadowBlurRadius,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(_imageBorderRadius),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(_imageBorderRadius),
                  child: CachedNetworkImage(
                    imageUrl: article.imgUrl,
                    placeholder: (context, url) => const SizedBox(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) => const SizedBox(
                      child: Center(
                        child: Icon(Icons.broken_image_outlined),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
