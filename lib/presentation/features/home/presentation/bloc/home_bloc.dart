import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/presentation/features/home/domain/entities/article.dart';
import 'package:news_api_project/presentation/features/home/domain/usecases/get_top_headlines.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required GetTopHeadlines getTopHeadlines})
      : _getTopHeadlines = getTopHeadlines,
        super(const HomeState.initial()) {
    on<_HomeFetched>(_onFetched);
    on<_HomeLoadMore>(_onLoadMore);
  }

  final GetTopHeadlines _getTopHeadlines;

  static const int _pageSize = 10;

  Future<void> _onFetched(_HomeFetched event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final result = await _getTopHeadlines(
      const GetTopHeadlinesParams(page: 1, pageSize: _pageSize),
    );
    result.fold(
      (failure) => emit(HomeState.error(failure: failure)),
      (data) {
        final (articles, totalResults) = data;
        emit(HomeState.loaded(articles: articles, totalResults: totalResults, page: 1));
      },
    );
  }

  Future<void> _onLoadMore(_HomeLoadMore event, Emitter<HomeState> emit) async {
    final current = state.mapOrNull(loaded: (s) => s);
    if (current == null) return;
    if (current.articles.length >= current.totalResults) return;

    emit(HomeState.loadingMore(
      articles: current.articles,
      totalResults: current.totalResults,
      page: current.page,
    ));

    final nextPage = current.page + 1;
    final result = await _getTopHeadlines(
      GetTopHeadlinesParams(page: nextPage, pageSize: _pageSize),
    );
    result.fold(
      (failure) => emit(HomeState.loaded(
        articles: current.articles,
        totalResults: current.totalResults,
        page: current.page,
      )),
      (data) {
        final (newArticles, totalResults) = data;
        emit(HomeState.loaded(
          articles: [...current.articles, ...newArticles],
          totalResults: totalResults,
          page: nextPage,
        ));
      },
    );
  }
}
