import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';

abstract class FavoritesRepository {
  Future<Either<Failure, List<Article>>> getFavorites();
  Future<Either<Failure, Unit>> toggleFavorite(Article article);
}
