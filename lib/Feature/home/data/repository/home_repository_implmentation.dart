import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/home/data/model/category_model.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';
import 'package:water_products/Feature/home/data/repository/home_repository.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/api/end_points.dart';
import 'package:water_products/core/error/failure.dart';

class HomeRepositoryImplmentation implements HomeRepository {
  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    try {
      List<CategoryModel> categories = [];
      var response = await DioHelper.getData(url: EndPoints.allCategories);
      for (var category in response.data['data']) {
        categories.add(CategoryModel.fromJson(category));
      }
      return Right(categories);
    } catch (error) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() async {
    //  throw UnimplementedError();
    try {
      List<ProductModel> products = [];
      var response = await DioHelper.getData(url: EndPoints.allProduct);
      for (var product in response.data['data']) {
        products.add(ProductModel.fromJson(product));
      }
      return Right(products);
    } catch (error) {
      return Left(Failure());
    }
  }
}
