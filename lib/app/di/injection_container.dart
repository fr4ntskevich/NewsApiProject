import 'package:get_it/get_it.dart';
import 'package:news_api_project/app/network/api_client.dart';
import 'package:news_api_project/features/articles/presentation/bloc/articles_bloc.dart';
import 'package:news_api_project/features/articles/data/datasources/articles_remote_data_source.dart';
import 'package:news_api_project/features/articles/data/repositories/articles_repository_impl.dart';
import 'package:news_api_project/features/articles/domain/repositories/articles_repository.dart';
import 'package:news_api_project/features/articles/domain/usecases/get_top_headlines.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  _initCore();
  _initHome();
}

void _initCore() {
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());
}

void _initHome() {
  getIt.registerLazySingleton<ArticlesRemoteDataSource>(
    () => ArticlesRemoteDataSourceImpl(apiClient: getIt()),
  );
  getIt.registerLazySingleton<ArticlesRepository>(
    () => ArticlesRepositoryImpl(remoteDataSource: getIt()),
  );
  getIt.registerLazySingleton(() => GetTopHeadlines(getIt()));
  getIt.registerFactory(() => ArticlesBloc(getTopHeadlines: getIt()));
}
