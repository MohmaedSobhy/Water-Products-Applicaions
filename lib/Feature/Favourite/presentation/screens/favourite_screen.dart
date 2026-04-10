import 'package:flutter/material.dart';
import 'package:water_products/Feature/Favourite/presentation/views/favourite_body_view.dart';
import 'package:water_products/core/extension/app_localization_extension.dart';
import 'package:water_products/core/theme/app_colors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.local.favourite,
          style: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FavouriteBodyView(),
    );
  }
}
