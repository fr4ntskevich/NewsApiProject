import 'package:flutter/material.dart';
import 'package:news_api_project/presentation/theme/app_colors.dart';

const String _fontFamily = 'Satoshi';

const TextTheme textTheme = TextTheme();

class AppTheme {
  static const LightColors _lightColors = LightColors();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: _lightColors.blue,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: _lightColors.white,
    brightness: Brightness.light,
    fontFamily: _fontFamily,
    textTheme: textTheme.apply(fontFamily: _fontFamily),
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColors.white,
    )
  );
}
