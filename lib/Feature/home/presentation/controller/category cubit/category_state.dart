import '../../../data/model/category_model.dart';

abstract class CategoryState {}

class CategoryInitialState extends CategoryState {}

class CategoryLoadingState extends CategoryInitialState {}

class CategorySuccessState extends CategoryState {
  final List<CategoryModel> categories;

  CategorySuccessState(this.categories);
}

class CategoryFailureState extends CategoryState {
  final String errorMessage;

  CategoryFailureState(this.errorMessage);
}
