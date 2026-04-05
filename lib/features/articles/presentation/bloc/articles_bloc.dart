import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/articles/domain/entities/articles_category.dart';
import 'package:news_api_project/features/articles/domain/usecases/get_top_headlines.dart';

part 'articles_bloc.freezed.dart';

part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc({required GetTopHeadlines getTopHeadlines})
      : _getTopHeadlines = getTopHeadlines,
        super(const ArticlesState.initial()) {
    on<_ArticlesFetched>(_onFetched);
    on<_ArticlesLoadMore>(_onLoadMore);
    on<_ArticlesCategoryChanged>(_onCategoryChanged);
  }

  final GetTopHeadlines _getTopHeadlines;

  static const int _pageSize = 10;
  ArticlesCategory _selectedCategory = ArticlesCategory.general;

  ArticlesCategory get selectedCategory => _selectedCategory;

  Future<void> _onFetched(_ArticlesFetched event, Emitter<ArticlesState> emit) async {
    emit(const ArticlesState.loading());
    final result = await _getTopHeadlines(
      GetTopHeadlinesParams(page: 1, pageSize: _pageSize, category: _selectedCategory),
    );
    result.fold(
      (failure) => emit(ArticlesState.error(failure: failure)),
      (data) {
        final (articles, totalResults) = data;
        emit(ArticlesState.loaded(articles: articles, totalResults: totalResults, page: 1));
      },
    );
  }

  Future<void> _onLoadMore(_ArticlesLoadMore event, Emitter<ArticlesState> emit) async {
    final current = state.mapOrNull(loaded: (s) => s);
    if (current == null) return;
    if (current.articles.length >= current.totalResults) return;

    emit(ArticlesState.loadingMore(
      articles: current.articles,
      totalResults: current.totalResults,
      page: current.page,
    ));

    final nextPage = current.page + 1;
    final result = await _getTopHeadlines(
      GetTopHeadlinesParams(page: nextPage, pageSize: _pageSize, category: _selectedCategory),
    );
    result.fold(
      (failure) => emit(ArticlesState.loaded(
        articles: current.articles,
        totalResults: current.totalResults,
        page: current.page,
      )),
      (data) {
        final (newArticles, totalResults) = data;
        emit(ArticlesState.loaded(
          articles: [...current.articles, ...newArticles],
          totalResults: totalResults,
          page: nextPage,
        ));
      },
    );
  }

  Future<void> _onCategoryChanged(_ArticlesCategoryChanged event, Emitter<ArticlesState> emit) async {
    if (_selectedCategory == event.category) return;
    _selectedCategory = event.category;
    emit(const ArticlesState.loading());
    final result = await _getTopHeadlines(
      GetTopHeadlinesParams(page: 1, pageSize: _pageSize, category: _selectedCategory),
    );
    result.fold(
      (failure) => emit(ArticlesState.error(failure: failure)),
      (data) {
        final (articles, totalResults) = data;
        emit(ArticlesState.loaded(articles: articles, totalResults: totalResults, page: 1));
      },
    );
  }
}
