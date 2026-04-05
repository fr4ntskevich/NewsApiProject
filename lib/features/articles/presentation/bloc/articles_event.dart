part of 'articles_bloc.dart';

@freezed
abstract class ArticlesEvent with _$ArticlesEvent {
  const factory ArticlesEvent.fetched() = _ArticlesFetched;
  const factory ArticlesEvent.loadMore() = _ArticlesLoadMore;
  const factory ArticlesEvent.categoryChanged(ArticlesCategory category) = _ArticlesCategoryChanged;
  const factory ArticlesEvent.searched(String query) = _ArticlesSearched;
}
