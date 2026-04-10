import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/data/model/image_slider_model.dart'
    show ImageGalleryModel;
import 'package:carousel_slider/carousel_slider.dart';

import '../../widgets/image_slider_card.dart';

class ImageSliderView extends StatefulWidget {
  const ImageSliderView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageStateSlider();
  }
}

class _ImageStateSlider extends State<ImageSliderView> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        height: 200,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {},
      ),
      items: ImageGalleryModel.getAllImages().map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return ImageSliderCard(imagePath: imagePath);
          },
        );
      }).toList(),
    );
  }
}
