import 'package:flutter/material.dart';
import 'package:news_api_project/presentation/theme/app_fonts.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';

class NewsCategoryChip extends StatelessWidget {
  const NewsCategoryChip({
    super.key,
    required this.label,
    required this.isActive,
    this.onTap,
  });

  static const double _width = 114;
  static const double _borderRadius = 22;

  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: _width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_borderRadius),
          color: isActive ? context.colors.blue : context.colors.greyLight,
        ),
        child: Center(
          child: Text(
            label,
            style: AppFonts.reg17.copyWith(
              color: context.colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
