import 'package:dartz/dartz.dart';
import 'package:news_api_project/app/error/failures.dart';
import 'package:news_api_project/core/domain/article.dart';
import 'package:news_api_project/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:news_api_project/features/favorites/data/models/favorite_article_model.dart';
import 'package:news_api_project/features/favorites/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl({required this.localDataSource});

  final FavoritesLocalDataSource localDataSource;

  @override
  Future<Either<Failure, List<Article>>> getFavorites() async {
    try {
      final models = localDataSource.getFavorites();
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (_) {
      return const Left(CacheFailure('Failed to load favorites'));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleFavorite(Article article) async {
    try {
      final models = localDataSource.getFavorites();
      final exists = models.any((m) => m.title == article.title);
      final updated = exists
          ? models.where((m) => m.title != article.title).toList()
          : [...models, FavoriteArticleModel.fromEntity(article)];
      await localDataSource.saveFavorites(updated);
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
