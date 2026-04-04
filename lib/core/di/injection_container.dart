import 'package:get_it/get_it.dart';
import 'package:news_api_project/core/network/api_client.dart';
import 'package:news_api_project/presentation/features/home/presentation/bloc/home_bloc.dart';
import 'package:news_api_project/presentation/features/home/data/datasources/news_remote_data_source.dart';
import 'package:news_api_project/presentation/features/home/data/repositories/news_repository_impl.dart';
import 'package:news_api_project/presentation/features/home/domain/repositories/news_repository.dart';
import 'package:news_api_project/presentation/features/home/domain/usecases/get_top_headlines.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  _initCore();
  _initHome();
}

void _initCore() {
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());
}

void _initHome() {
  getIt.registerLazySingleton<NewsRemoteDataSource>(
    () => NewsRemoteDataSourceImpl(apiClient: getIt()),
  );
  getIt.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(remoteDataSource: getIt()),
  );
  getIt.registerLazySingleton(() => GetTopHeadlines(getIt()));
  getIt.registerFactory(() => HomeBloc(getTopHeadlines: getIt()));
}
