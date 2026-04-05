part of 'articles_bloc.dart';

@freezed
sealed class ArticlesState with _$ArticlesState {
  const factory ArticlesState.initial() = _ArticlesInitial;
  const factory ArticlesState.loading() = _ArticlesLoading;
  const factory ArticlesState.loaded({
    required List<Article> articles,
    required int totalResults,
    required int page,
  }) = _ArticlesLoaded;
  const factory ArticlesState.loadingMore({
    required List<Article> articles,
    required int totalResults,
    required int page,
  }) = _ArticlesLoadingMore;
  const factory ArticlesState.error({required Failure failure}) = _ArticlesError;
}
