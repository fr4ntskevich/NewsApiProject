import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/articles/domain/entities/articles_category.dart';
import 'package:news_api_project/features/articles/domain/repositories/articles_repository.dart';

class GetTopHeadlines {
  const GetTopHeadlines(this._repository);

  final ArticlesRepository _repository;

  Future<Either<Failure, (List<Article>, int totalResults)>> call(
    GetTopHeadlinesParams params,
  ) {
    return _repository.getTopHeadlines(
      page: params.page,
      pageSize: params.pageSize,
      country: params.country,
      category: params.category,
      query: params.query,
    );
  }
}

class GetTopHeadlinesParams extends Equatable {
  const GetTopHeadlinesParams({
    required this.page,
    required this.pageSize,
    this.country = 'us',
    this.category,
    this.query,
  });

  final int page;
  final int pageSize;
  final String country;
  final ArticlesCategory? category;
  final String? query;

  @override
  List<Object?> get props => [page, pageSize, country, category, query];
}
