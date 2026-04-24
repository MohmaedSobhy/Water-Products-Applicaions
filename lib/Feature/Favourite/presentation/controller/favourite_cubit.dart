import 'dart:developer';

import 'package:water_products/Feature/Favourite/data/repo/favourite_repository_implmentation.dart';
import 'package:water_products/Feature/Favourite/presentation/controller/favourite_state.dart';
import 'package:bloc/bloc.dart';
import 'package:water_products/core/services/flutter_secure_storage.dart';

import '../../data/model/request_favourite_model.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  late final FavouriteRepositoryImplmentation favouriteRepo;
  FavouriteCubit(this.favouriteRepo) : super(FavouriteInitialState());

  void getFavouriteProducts() async {
    emit(FavouriteLoadingState()); // Loading
    String token = await StorageHelper.getAccessToken() ?? "";
    log("token is ${token.toString()}");
    var result = await favouriteRepo.getFavouriteProducts(token);

    result.fold(
      (fail) {
        emit(FavouriteFailureState("Error"));
      },
      (products) {
        emit(FavouriteSuccessState(products));
      },
    );
  }

  void removeProductFromFavourite(String productId) async {
    String token = await StorageHelper.getAccessToken() ?? "";
    var result = await favouriteRepo.removeProductFromFavourite(
      RequestFavouriteModel(proudectId: productId, token: token),
    );
    result.fold(
      (fail) {
        emit(FavouriteFailureState("Error"));
      },
      (success) {
        if (success) {
          getFavouriteProducts();
        }
      },
    );
  }
}
