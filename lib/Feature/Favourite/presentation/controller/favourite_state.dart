import '../../../home/data/model/product_model.dart';

abstract class FavouriteState {}

class FavouriteInitialState extends FavouriteState {}

class FavouriteLoadingState extends FavouriteState {}

class FavouriteSuccessState extends FavouriteState {
  final List<ProductModel> products;

  FavouriteSuccessState(this.products);
}

class FavouriteFailureState extends FavouriteState {
  final String errorMessage;

  FavouriteFailureState(this.errorMessage);
}
