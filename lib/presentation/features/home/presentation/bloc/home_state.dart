part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeInitial;
  const factory HomeState.loading() = _HomeLoading;
  const factory HomeState.loaded({
    required List<Article> articles,
    required int totalResults,
    required int page,
  }) = _HomeLoaded;
  const factory HomeState.loadingMore({
    required List<Article> articles,
    required int totalResults,
    required int page,
  }) = _HomeLoadingMore;
  const factory HomeState.error({required Failure failure}) = _HomeError;
}
