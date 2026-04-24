import 'package:water_products/Feature/Favourite/data/model/request_favourite_model.dart';

import '../../../../core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../../home/data/model/product_model.dart';

abstract class FavouriteRepository {
  Future<Either<Failure, List<ProductModel>>> getFavouriteProducts(
    String token,
  );
  Future<Either<Failure, bool>> addProductToFavourite(
    RequestFavouriteModel requestModel,
  );
  Future<Either<Failure, bool>> removeProductFromFavourite(
    RequestFavouriteModel requestModel,
  );
}
