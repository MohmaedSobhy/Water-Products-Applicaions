import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/all product/all_product_cubit.dart';
import '../controller/all product/all_products_state.dart';

class SliverGetAllProducts extends StatelessWidget {
  const SliverGetAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllProductCubit(),
      child: BlocBuilder<AllProductCubit, AllProductState>(
        builder: (context, state) {
          if (state is AllProductLoadingState) {
            // shimer
            return SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }

          return SliverToBoxAdapter();
        },
      ),
    );
  }
}
