import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_products/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:water_products/Feature/home/presentation/widgets/product_grid_widget.dart';
import 'package:water_products/core/theme/app_colors.dart';

import '../../../../core/services/get_it_services.dart';
import '../controller/all product/all_product_cubit.dart';
import '../controller/all product/all_products_state.dart';

class SliverGetAllProducts extends StatelessWidget {
  const SliverGetAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AllProductCubit(GetItServices.getIt<HomeRepositoryImplmentation>())
            ..getAllProduct(),
      child: BlocBuilder<AllProductCubit, AllProductState>(
        builder: (context, state) {
          log("State is $state");
          if (state is AllProductLoadingState ||
              state is AllProductInitialState) {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(color: AppColor.primaryColor),
              ),
            );
          }
          if (state is AllProductSuccessState) {
            return SliverGrid.builder(
              itemCount: state.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5 / 2.5,
              ),
              itemBuilder: (context, index) {
                return ProductGridWidget(productModel: state.products[index]);
              },
            );
          }

          return SliverToBoxAdapter(child: SizedBox());
        },
      ),
    );
  }
}
