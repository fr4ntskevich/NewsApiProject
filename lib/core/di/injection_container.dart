import 'package:get_it/get_it.dart';
import 'package:news_api_project/core/network/api_client.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  _initCore();
}

void _initCore() {
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());
}
