import 'package:water_products/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:water_products/core/services/get_it_services.dart';

import 'category_state.dart';
import 'package:bloc/bloc.dart';

class CategoryCubit extends Cubit<CategoryState> {
  late final HomeRepositoryImplmentation homeRepo;
  CategoryCubit(this.homeRepo) : super(CategoryInitialState());

  void getAllCategory() async {
    emit(CategoryLoadingState());

    var result = await homeRepo.getAllCategories();
    result.fold(
      (failure) {
        emit(CategoryFailureState("Failed To Get Product"));
      },
      (category) {
        emit(CategorySuccessState(category));
      },
    );
  }
}
