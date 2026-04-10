import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/presentation/views/image_slider_view.dart';
import 'package:water_products/Feature/home/presentation/views/sliver_app_bar_view.dart';
import 'package:water_products/Feature/home/presentation/widgets/image_slider_card.dart';
import 'package:water_products/core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBarView(),
        const SliverToBoxAdapter(child: ImageSliderView()),
        SliverList.builder(
          itemCount: 10,

          itemBuilder: (context, index) {
            return ListTile(title: Text("Home Screen"));
          },
        ),
        SliverGrid.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Image(
                image: NetworkImage(
                  "https://ecommerce.routemisr.com/Route-Academy-products/1680403397482-1.jpeg",
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
