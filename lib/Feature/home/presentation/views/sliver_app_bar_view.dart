import 'package:flutter/material.dart';
import 'package:water_products/core/routes/app_route.dart';
import 'package:water_products/core/theme/app_colors.dart' show AppColor;

class SliverAppBarView extends StatelessWidget {
  const SliverAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        children: [
          Text(
            "E- ",
            style: TextStyle(
              color: AppColor.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Commerce",
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            size: 25,
            color: AppColor.primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoute.favouriteScreen);
          },
          icon: Icon(
            Icons.favorite_outline,
            size: 25,
            color: AppColor.primaryColor,
          ),
        ),
      ],
    );
  }
}
