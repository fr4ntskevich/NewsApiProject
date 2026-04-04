import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/presentation/widgets/nav_bar.dart';

@RoutePage()
class AppWrapperPage extends StatelessWidget {
  const AppWrapperPage({super.key});

  static const double _navBarPadding = 20;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        HomeRoute(),
        FavoriteRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Padding(
          padding: const EdgeInsets.all(_navBarPadding),
          child: NavBar(tabsRouter: tabsRouter),
        );
      },
    );
  }
}
