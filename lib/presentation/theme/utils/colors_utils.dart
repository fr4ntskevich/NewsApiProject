import 'package:flutter/material.dart';

import '../app_colors.dart';

extension ColorsUtils on BuildContext {
  AppColors get colors => AppColors.of(this);
}
