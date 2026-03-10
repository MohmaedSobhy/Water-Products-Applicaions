import 'package:flutter/material.dart';
import '../../../../core/extension/app_localization_extension.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/utils/app_assets.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarView extends StatelessWidget {
  final int currentScreen;
  final void Function(int) onTap;
  const BottomNavigationBarView({
    super.key,
    required this.currentScreen,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentScreen,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColor.white,
      unselectedItemColor: AppColor.darkGray,
      selectedLabelStyle: AppTextStyle.text16Bold(context),
      unselectedLabelStyle: AppTextStyle.text16Bold(context),
      items: [
        BottomNavigationBarItem(
          label: context.local.home,
          activeIcon: SvgPicture.asset(AppImageAssets.activehomeIcon),
          icon: SvgPicture.asset(AppImageAssets.inActivehomeIcon),
        ),
        BottomNavigationBarItem(
          label: context.local.cart,
          activeIcon: SvgPicture.asset(AppImageAssets.activeCartIcon),
          icon: SvgPicture.asset(AppImageAssets.inActiveCartIcon),
        ),
        BottomNavigationBarItem(
          label: context.local.orders,
          activeIcon: SvgPicture.asset(AppImageAssets.activeOrderIcon),
          icon: SvgPicture.asset(AppImageAssets.inActiveOrderIcon),
        ),
        BottomNavigationBarItem(
          label: context.local.settings,
          activeIcon: SvgPicture.asset(AppImageAssets.activeSettingsIcon),
          icon: SvgPicture.asset(AppImageAssets.inActiveSettingsIcon),
        ),
      ],
    );
  }
}
