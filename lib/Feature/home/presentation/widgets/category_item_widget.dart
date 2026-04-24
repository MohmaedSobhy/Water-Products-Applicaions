import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/data/model/category_model.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItemWidget({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        alignment: Alignment.center,
        child: Text(
          categoryModel.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
