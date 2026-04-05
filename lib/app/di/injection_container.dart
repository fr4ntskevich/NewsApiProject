import 'package:get_it/get_it.dart';
import 'package:news_api_project/app/network/api_client.dart';
import 'package:news_api_project/features/articles/presentation/bloc/articles_bloc.dart';
import 'package:news_api_project/features/articles/data/datasources/articles_remote_data_source.dart';
import 'package:news_api_project/features/articles/data/repositories/articles_repository_impl.dart';
import 'package:news_api_project/features/articles/domain/repositories/articles_repository.dart';
import 'package:news_api_project/features/articles/domain/usecases/get_top_headlines.dart';
import 'package:news_api_project/features/favorites/data/datasources/favorites_local_data_source.dart';
import 'package:news_api_project/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:news_api_project/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:news_api_project/features/favorites/domain/usecases/get_favorites.dart';
import 'package:news_api_project/features/favorites/domain/usecases/toggle_favorite.dart';
import 'package:news_api_project/features/favorites/presentation/cubit/favorites_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  _initCore(sharedPreferences);
  _initArticles();
  _initFavorites();
}

void _initCore(SharedPreferences sharedPreferences) {
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

void _initArticles() {
  getIt.registerLazySingleton<ArticlesRemoteDataSource>(
    () => ArticlesRemoteDataSourceImpl(apiClient: getIt()),
  );
  getIt.registerLazySingleton<ArticlesRepository>(
    () => ArticlesRepositoryImpl(remoteDataSource: getIt()),
  );
  getIt.registerLazySingleton(() => GetTopHeadlines(getIt()));
  getIt.registerFactory(() => ArticlesBloc(getTopHeadlines: getIt()));
}

void _initFavorites() {
  getIt.registerLazySingleton<FavoritesLocalDataSource>(
    () => FavoritesLocalDataSourceImpl(sharedPreferences: getIt()),
  );
  getIt.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(localDataSource: getIt()),
  );
  getIt.registerLazySingleton(() => GetFavorites(getIt()));
  getIt.registerLazySingleton(() => ToggleFavorite(getIt()));
  getIt.registerLazySingleton(
    () => FavoritesCubit(getFavorites: getIt(), toggleFavorite: getIt()),
  );
}
