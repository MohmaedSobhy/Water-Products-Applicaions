import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/presentation/views/image_slider_view.dart';
import 'package:water_products/Feature/home/presentation/views/sliver_app_bar_view.dart';
import 'package:water_products/Feature/home/presentation/views/sliver_get_all_products.dart'
    show SliverGetAllProducts;
import 'package:water_products/Feature/home/presentation/views/sliver_get_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBarView(),
        const SliverToBoxAdapter(child: ImageSliderView()),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        const SliverGetCategory(),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        const SliverGetAllProducts(),
      ],
    );
  }
}
