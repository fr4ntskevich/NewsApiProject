import 'package:flutter/material.dart';
import 'package:news_api_project/app/l10n/app_localizations.dart';
import 'package:news_api_project/app/router/app_router.dart';
import 'package:news_api_project/presentation/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
