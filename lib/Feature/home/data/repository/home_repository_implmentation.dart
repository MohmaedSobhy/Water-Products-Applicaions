import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/home/data/model/category_model.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';
import 'package:water_products/Feature/home/data/repository/home_repository.dart';
import 'package:water_products/core/error/failure.dart';

class HomeRepositoryImplmentation implements HomeRepository {
  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() {
    // TODO: implement getAllProducts
    throw UnimplementedError();
  }
}
