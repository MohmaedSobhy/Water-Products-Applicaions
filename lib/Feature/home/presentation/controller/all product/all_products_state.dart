import 'package:water_products/Feature/home/data/model/product_model.dart';

abstract class AllProductState {}

class AllProductInitialState extends AllProductState {}

class AllProductLoadingState extends AllProductState {}

class AllProductSuccessState extends AllProductState {
  final List<ProductModel> products;

  AllProductSuccessState(this.products);
}

class AllProductFailureState extends AllProductState {
  final String errorMessage;

  AllProductFailureState(this.errorMessage);
}
