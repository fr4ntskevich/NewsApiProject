import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/app/error/utils/failure_localizer.dart';
import 'package:news_api_project/app/l10n/utils/l10n_utils.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_state.dart';
import 'package:news_api_project/presentation/widgets/article_card.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  static const double _toolbarHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: _toolbarHeight,
      ),
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (favorites) =>
                favorites.isEmpty ? _EmptyFavoritesView() : _FavoritesList(favorites: favorites),
            error: (failure) => Center(
              child: Text(failure.localizedMessage(context.l10n)),
            ),
          );
        },
      ),
    );
  }
}

class _FavoritesList extends StatelessWidget {
  const _FavoritesList({required this.favorites});

  static const double _cardSpacing = 16;
  static const EdgeInsets _listPadding = EdgeInsets.all(19);
  static final _dateFormat = DateFormat('dd.MM.yyyy');

  final List<Article> favorites;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: _listPadding,
      itemCount: favorites.length,
      separatorBuilder: (context, index) => const SizedBox(height: _cardSpacing),
      itemBuilder: (context, index) {
        final article = favorites[index];
        return ArticleCard(
          key: ValueKey(article.title),
          title: article.title,
          subtitle: article.subtitle,
          date: _dateFormat.format(article.publishedAt),
          imageUrl: article.imgUrl,
          isFavorite: true,
          onFavoriteToggle: () => context.read<FavoritesCubit>().toggle(article),
          onTap: () => context.router.push(ArticleDetailsRoute(article: article)),
        );
      },
    );
  }
}

class _EmptyFavoritesView extends StatelessWidget {
  static const double _iconSize = 64;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star_border_rounded, size: _iconSize),
          const SizedBox(height: 16),
          Text(context.l10n.noFavoritesYet),
        ],
      ),
    );
  }
}
