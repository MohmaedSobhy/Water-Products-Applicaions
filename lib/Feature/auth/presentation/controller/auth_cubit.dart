import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/data/model/register_request_model.dart';
import 'package:water_products/Feature/auth/data/model/user_model.dart';
import 'package:water_products/Feature/auth/data/repository/auth_respository_implmentation.dart';
import 'package:water_products/Feature/auth/presentation/controller/auth_state.dart';
import 'package:water_products/core/services/flutter_secure_storage.dart';
import 'package:water_products/core/services/get_it_services.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState()) {
    auth = GetItServices.getIt<AuthRespositoryImplmentation>();
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late final AuthRespositoryImplmentation auth;
  final formKey = GlobalKey<FormState>();

  void loginMethod() async {}

  void registerMethod() async {
    emit(AuthLoadingState());
    var result = await auth.register(
      RegisterRequestModel(
        userName: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    result.fold(
      (failure) => {emit(AuthFailureState("Check User Name Or Email"))},
      (user) async {
        await saveToStorageHelper(user);
        emit(AuthSuccessState());
      },
    );
  }

  Future<void> saveToStorageHelper(UserModel user) async {
    await StorageHelper.saveAccessToken(user.token);
    await StorageHelper.saveRefreshToken(user.refreshToken);
  }
}
