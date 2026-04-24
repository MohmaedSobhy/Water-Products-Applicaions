import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductFavouriteCard extends StatelessWidget {
  final ProductModel productModel;

  const ProductFavouriteCard({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // important for rounded image
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl: productModel.imageCover,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + favorite icon
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          productModel.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // Rating
                  Row(
                    children: [
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        "${productModel.ratingsAverage}",
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // Price + Sold
                  Row(
                    children: [
                      Text(
                        "${productModel.price} EGP",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "${productModel.sold} sold",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
