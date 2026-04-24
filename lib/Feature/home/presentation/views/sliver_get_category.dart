import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:water_products/Feature/home/data/repository/home_repository_implmentation.dart';
import 'package:water_products/Feature/home/presentation/controller/category%20cubit/category_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_products/Feature/home/presentation/controller/category%20cubit/category_state.dart';
import 'package:water_products/Feature/home/presentation/widgets/category_item_widget.dart';
import 'package:water_products/core/services/get_it_services.dart';
import 'package:water_products/core/theme/app_colors.dart';

class SliverGetCategory extends StatelessWidget {
  const SliverGetCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoryCubit(GetItServices.getIt<HomeRepositoryImplmentation>())
            ..getAllCategory(),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          log("State is $state");
          if (state is CategoryLoadingState) {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(color: AppColor.primaryColor),
              ),
            );
          }
          if (state is CategorySuccessState) {
            return SliverGrid.builder(
              itemCount: state.categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return CategoryItemWidget(
                  categoryModel: state.categories[index],
                );
              },
            );
          }
          return SliverToBoxAdapter(child: SizedBox());
        },
      ),
    );
  }
}
