import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/presentation/views/image_slider_view.dart';
import 'package:water_products/Feature/home/presentation/views/sliver_app_bar_view.dart';
import 'package:water_products/Feature/home/presentation/views/sliver_get_all_products.dart'
    show SliverGetAllProducts;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBarView(),
        const SliverToBoxAdapter(child: ImageSliderView()),
        // SliverList.builder(
        //   itemCount: 10,

        //   itemBuilder: (context, index) {
        //     return ListTile(title: Text("Home Screen"));
        //   },
        // ),
        const SliverGetAllProducts(),
      ],
    );
  }
}
