import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/exceptions.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/presentation/features/home/data/datasources/news_remote_data_source.dart';
import 'package:news_api_project/presentation/features/home/data/models/article_model.dart';
import 'package:news_api_project/presentation/features/home/domain/entities/article.dart';
import 'package:news_api_project/presentation/features/home/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  const NewsRepositoryImpl({required this.remoteDataSource});

  final NewsRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, (List<Article>, int totalResults)>> getTopHeadlines({
    required int page,
    required int pageSize,
    String country = 'us',
  }) async {
    try {
      final result = await remoteDataSource.getTopHeadlines(
        page: page,
        pageSize: pageSize,
        country: country,
      );
      final articles = result.articles.map((m) => m.toEntity()).toList();
      return Right((articles, result.totalResults));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
