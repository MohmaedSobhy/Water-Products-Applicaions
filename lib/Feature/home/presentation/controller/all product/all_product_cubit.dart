import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:water_products/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:water_products/core/services/get_it_services.dart';

import 'all_products_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  late final HomeRepositoryImplmentation homeRepo;
  AllProductCubit() : super(AllProductInitialState()) {
    homeRepo = GetItServices.getIt<HomeRepositoryImplmentation>();
  }

  void getAllProduct() async {
    emit(AllProductLoadingState());

    var result = await homeRepo.getAllProducts();

    result.fold(
      (failure) {
        emit(AllProductFailureState("Failed To Get Product"));
      },
      (product) {
        emit(AllProductSuccessState(product));
      },
    );
  }
}
