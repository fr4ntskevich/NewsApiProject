import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/domain/usecases/get_favorites.dart';
import 'package:news_api_project/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit({
    required this.getFavorites,
    required this.toggleFavorite,
  }) : super(const FavoritesState.initial());

  final GetFavorites getFavorites;
  final ToggleFavorite toggleFavorite;

  Future<void> loadFavorites() async {
    emit(const FavoritesState.loading());
    final result = await getFavorites();
    result.fold(
      (failure) => emit(FavoritesState.error(failure)),
      (favorites) => emit(FavoritesState.loaded(favorites)),
    );
  }

  Future<void> toggle(Article article) async {
    await toggleFavorite(article);
    await loadFavorites();
  }

  bool isFavorite(Article article) {
    return state.maybeWhen(
      loaded: (favorites) => favorites.any((a) => a.title == article.title),
      orElse: () => false,
    );
  }
}
