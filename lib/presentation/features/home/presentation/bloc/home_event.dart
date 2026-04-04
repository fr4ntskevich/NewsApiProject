part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetched() = _HomeFetched;
  const factory HomeEvent.loadMore() = _HomeLoadMore;
  const factory HomeEvent.categoryChanged(NewsCategory category) = _HomeCategoryChanged;
}
