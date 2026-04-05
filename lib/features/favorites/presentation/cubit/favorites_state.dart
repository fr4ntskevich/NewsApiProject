import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';

part 'favorites_state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loading() = _Loading;
  const factory FavoritesState.loaded(List<Article> favorites) = _Loaded;
  const factory FavoritesState.error(Failure failure) = _Error;
}
