import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/presentation/pages/favorite_page.dart';
import 'package:news_api_project/features/articles/presentation/pages/home_page.dart';
import 'package:news_api_project/features/articles/presentation/pages/article_details_page.dart';
import 'package:news_api_project/app/router/app_wrapper_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppWrapperRoute.page,
          initial: true,
          children: [
            AutoRoute(page: ArticlesRoute.page, initial: true),
            AutoRoute(page: FavoritesRoute.page),
          ],
        ),
        AutoRoute(page: ArticleDetailsRoute.page),
      ];
}
