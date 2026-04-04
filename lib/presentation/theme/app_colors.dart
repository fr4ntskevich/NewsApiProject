import 'package:flutter/material.dart';

sealed class AppColors {
  factory AppColors.of(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    return brightness == Brightness.light ? const LightColors() : const DarkColors();
  }

  Color get white;
  Color get black;
  Color get greyLight;
  Color get grey;
  Color get blue;
  Color get shadow;
  Color get border;
}

class LightColors implements AppColors {
  const LightColors();

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get black => const Color(0xFF000000);

  @override
  Color get greyLight => const Color(0xFFC1C1C1);

  @override
  Color get grey => const Color(0xFF6A6A6A);

  @override
  Color get blue => const Color(0xFF2F78FF);

  @override
  Color get shadow => const Color(0x26000000);

  @override
  Color get border => const Color(0xFFCECECE);
}

class DarkColors extends LightColors {
  const DarkColors();
}
