import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/exceptions.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/app/error/utils/news_api_error_mapper.dart';
import 'package:news_api_project/features/articles/data/datasources/articles_remote_data_source.dart';
import 'package:news_api_project/features/articles/data/models/article_model.dart';
import 'package:news_api_project/features/articles/data/models/top_headlines_request_model.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/articles/domain/entities/articles_category.dart';
import 'package:news_api_project/features/articles/domain/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  const ArticlesRepositoryImpl({required this.remoteDataSource});

  final ArticlesRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, (List<Article>, int totalResults)>> getTopHeadlines({
    required int page,
    required int pageSize,
    String country = 'us',
    ArticlesCategory? category,
    String? query,
  }) async {
    try {
      final result = await remoteDataSource.getTopHeadlines(
        TopHeadlinesRequestModel(
          page: page,
          pageSize: pageSize,
          country: country,
          category: category?.apiValue,
          query: query,
        ),
      );
      final articles = result.articles.map((m) => m.toEntity()).toList();
      return Right((articles, result.totalResults));
    } on ServerException catch (e) {
      return Left(NewsApiErrorMapper.fromServerException(e));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
