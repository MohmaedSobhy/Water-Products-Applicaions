import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/Favourite/data/model/request_favourite_model.dart';
import 'package:water_products/Feature/Favourite/data/repo/favourite_repository.dart';
import 'package:water_products/Feature/home/data/model/product_model.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/api/end_points.dart';
import 'package:water_products/core/error/failure.dart';

class FavouriteRepositoryImplmentation implements FavouriteRepository {
  @override
  Future<Either<Failure, bool>> addProductToFavourite(
    RequestFavouriteModel requestModel,
  ) {
    // TODO: implement addProductToFavourite
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getFavouriteProducts(
    String token,
  ) async {
    try {
      List<ProductModel> products = [];
      var response = await DioHelper.getData(
        url: EndPoints.favourite,
        token: token,
      );
      log(response.data.toString());
      for (var product in response.data['data']) {
        products.add(ProductModel.fromJson(product));
      }
      return Right(products);
    } catch (error) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, bool>> removeProductFromFavourite(
    RequestFavouriteModel requestModel,
  ) async {
    try {
      List<ProductModel> products = [];
      await DioHelper.deleteData(
        url: "${EndPoints.favourite}/${requestModel.proudectId}",
        token: requestModel.token,
      );

      return Right(true);
    } catch (error) {
      return Left(Failure());
    }
  }
}
