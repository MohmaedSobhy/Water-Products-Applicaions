import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:water_products/core/utils/app_assets.dart';

class FavouriteLoadingWidget extends StatelessWidget {
  const FavouriteLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(AppImageAssets.heartFavouriteLoading, height: 300),
    );
  }
}
