// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AppWrapperPage]
class AppWrapperRoute extends PageRouteInfo<void> {
  const AppWrapperRoute({List<PageRouteInfo>? children})
    : super(AppWrapperRoute.name, initialChildren: children);

  static const String name = 'AppWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppWrapperPage();
    },
  );
}

/// generated route for
/// [ArticleDetailsPage]
class ArticleDetailsRoute extends PageRouteInfo<ArticleDetailsRouteArgs> {
  ArticleDetailsRoute({
    Key? key,
    required Article article,
    List<PageRouteInfo>? children,
  }) : super(
         ArticleDetailsRoute.name,
         args: ArticleDetailsRouteArgs(key: key, article: article),
         initialChildren: children,
       );

  static const String name = 'ArticleDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticleDetailsRouteArgs>();
      return ArticleDetailsPage(key: args.key, article: args.article);
    },
  );
}

class ArticleDetailsRouteArgs {
  const ArticleDetailsRouteArgs({this.key, required this.article});

  final Key? key;

  final Article article;

  @override
  String toString() {
    return 'ArticleDetailsRouteArgs{key: $key, article: $article}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ArticleDetailsRouteArgs) return false;
    return key == other.key && article == other.article;
  }

  @override
  int get hashCode => key.hashCode ^ article.hashCode;
}

/// generated route for
/// [ArticlesPage]
class ArticlesRoute extends PageRouteInfo<void> {
  const ArticlesRoute({List<PageRouteInfo>? children})
    : super(ArticlesRoute.name, initialChildren: children);

  static const String name = 'ArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArticlesPage();
    },
  );
}

/// generated route for
/// [FavoritesPage]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritesPage();
    },
  );
}
