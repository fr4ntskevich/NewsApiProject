import 'package:auto_route/auto_route.dart';
import 'package:news_api_project/presentation/features/favorite/favorite_page.dart';
import 'package:news_api_project/presentation/features/home/home_page.dart';
import 'package:news_api_project/presentation/features/news_details/news_details_page.dart';
import 'package:news_api_project/presentation/features/app_warpper/app_warpper_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppWrapperRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: FavoriteRoute.page),
          ],
        ),
        AutoRoute(page: NewsDetailsRoute.page),
      ];
}
