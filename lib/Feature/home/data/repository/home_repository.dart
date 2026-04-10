import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/home/data/model/category_model.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';

import '../../../../core/error/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<ProductModel>>> getAllProducts();
  Future<Either<Failure, List<CategoryModel>>> getAllCategories();
}
