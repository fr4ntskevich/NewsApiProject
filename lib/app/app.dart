import 'package:flutter/material.dart';
import 'package:news_api_project/app/l10n/app_localizations.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/presentation/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
