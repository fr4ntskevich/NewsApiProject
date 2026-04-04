import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/presentation/features/home/domain/entities/article.dart';

abstract class NewsRepository {
  Future<Either<Failure, (List<Article>, int totalResults)>> getTopHeadlines({
    required int page,
    required int pageSize,
    String country = 'us',
  });
}
