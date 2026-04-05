import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/domain/repositories/favorites_repository.dart';

class ToggleFavorite {
  ToggleFavorite(this.repository);

  final FavoritesRepository repository;

  Future<Either<Failure, Unit>> call(Article article) =>
      repository.toggleFavorite(article);
}
