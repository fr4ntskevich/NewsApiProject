import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_state.dart';
import 'package:news_api_project/presentation/widgets/article_card.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 50,
      ),
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (favorites) =>
                favorites.isEmpty ? const _EmptyFavoritesView() : _FavoritesList(favorites: favorites),
            error: (failure) => Center(child: Text(failure.message)),
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
        return BlocBuilder<FavoritesCubit, FavoritesState>(
          builder: (context, state) {
            final isFav = context.read<FavoritesCubit>().isFavorite(article);
            return ArticleCard(
              title: article.title,
              subtitle: article.subtitle,
              date: _dateFormat.format(article.publishedAt),
              imageUrl: article.imgUrl,
              isFavorite: isFav,
              onFavoriteToggle: () => context.read<FavoritesCubit>().toggle(article),
              onTap: () => context.router.push(ArticleDetailsRoute(article: article)),
            );
          },
        );
      },
    );
  }
}

class _EmptyFavoritesView extends StatelessWidget {
  const _EmptyFavoritesView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_border_rounded, size: 64),
          SizedBox(height: 16),
          Text('No favorites yet'),
        ],
      ),
    );
  }
}
