import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductGridWidget extends StatelessWidget {
  final ProductModel productModel;
  const ProductGridWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: CachedNetworkImage(
                imageUrl: productModel.imageCover,
                fit: BoxFit.cover,
                width: double.infinity,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  productModel.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 4),

                // Price
                Text(
                  "${productModel.price} EGP",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                // Rating + Sold
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 2),
                    Text(
                      productModel.ratingsAverage.toString(),
                      style: const TextStyle(fontSize: 12),
                    ),
                    const Spacer(),
                    Text(
                      "${productModel.sold} sold",
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
