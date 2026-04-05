import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_api_project/presentation/theme/app_icons.dart';
import 'package:news_api_project/presentation/theme/app_shadows.dart';
import 'package:news_api_project/presentation/theme/utils/colors_utils.dart';

enum RouterTab { home, favorite }

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  static const double _borderRadius = 12;
  static const double _borderWidth = 0.5;
  static const double _iconsVerticalPadding = 26;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(_borderRadius),
        border: Border.all(
          color: context.colors.border,
          width: _borderWidth,
        ),
        boxShadow: [
          AppShadows.card(context.colors.shadow),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: _iconsVerticalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _NavBarItem(
              iconPath: AppIcons.home,
              isActive: tabsRouter.activeIndex == RouterTab.home.index,
              onTap: () => tabsRouter.setActiveIndex(RouterTab.home.index),
            ),
            _NavBarItem(
              iconPath: AppIcons.favorite,
              isActive: tabsRouter.activeIndex == RouterTab.favorite.index,
              onTap: () => tabsRouter.setActiveIndex(RouterTab.favorite.index),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.iconPath,
    required this.isActive,
    required this.onTap,
  });

  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          isActive ? context.colors.blue : context.colors.grey,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
