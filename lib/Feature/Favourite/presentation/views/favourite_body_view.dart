import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_products/Feature/Favourite/data/repo/favourite_repository_implmentation.dart';
import 'package:water_products/Feature/Favourite/presentation/controller/favourite_cubit.dart';
import 'package:water_products/Feature/Favourite/presentation/controller/favourite_state.dart';
import 'package:water_products/Feature/Favourite/presentation/widget/no_favourite_products.dart';
import 'package:water_products/Feature/Favourite/presentation/widget/product_favourite_card.dart';
import 'package:water_products/core/services/get_it_services.dart';

import '../widget/favourite_loading_widget.dart';

class FavouriteBodyView extends StatelessWidget {
  const FavouriteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(
        GetItServices.getIt<FavouriteRepositoryImplmentation>(),
      )..getFavouriteProducts(),
      child: BlocBuilder<FavouriteCubit, FavouriteState>(
        builder: (context, state) {
          if (state is FavouriteLoadingState ||
              state is FavouriteInitialState) {
            return FavouriteLoadingWidget();
          } else if (state is FavouriteSuccessState) {
            if (state.products.isEmpty) {
              return NoFavouriteProducts();
            }
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductFavouriteCard(
                  productModel: state.products[index],
                );
              },
            );
          }
          return Center(child: Text("Error"));
        },
      ),
    );
  }
}
