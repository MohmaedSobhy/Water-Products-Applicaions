import 'package:flutter/material.dart';

class ImageSliderCard extends StatelessWidget {
  final String imagePath;

  const ImageSliderCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Image(image: AssetImage(imagePath), fit: BoxFit.fill),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withAlpha((255 * 0.15).toInt()),
            ),
          ),
        ],
      ),
    );
  }
}
