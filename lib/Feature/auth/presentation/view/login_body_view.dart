import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/presentation/controller/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_products/core/routes/app_route.dart';
import 'package:water_products/core/theme/app_colors.dart';
import '../../../../core/extension/app_localization_extension.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/custome_text_form_field.dart';
import '../controller/auth_cubit.dart';

class LoginBodyView extends StatefulWidget {
  const LoginBodyView({super.key});

  @override
  State<LoginBodyView> createState() => _LoginBodyViewState();
}

class _LoginBodyViewState extends State<LoginBodyView> {
  late final AuthCubit authCubit;
  @override
  void initState() {
    authCubit = AuthCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => authCubit,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 2),
        child: Form(
          key: authCubit.formKey,

          child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccessState) {
                Navigator.of(context).pushReplacementNamed(AppRoute.mainScreen);
              } else if (state is AuthFailureState) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Error Message Login")));
              }
            },
            child: ListView(
              children: [
                Image(image: AssetImage(AppImageAssets.appLogo)),
                CustomeTextFormField(
                  inputType: TextInputType.emailAddress,
                  hint: context.local.enterEmail,
                  controller: authCubit.emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Email";
                    } else if (value.length >= 50 || value.length <= 10) {
                      return "Email Must Be At Least 5 Characters";
                    } else if (!RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    ).hasMatch(value)) {
                      return "Please Enter A Valid Email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                CustomeTextFormField(
                  inputType: TextInputType.visiblePassword,
                  hint: context.local.enterPassword,
                  controller: authCubit.passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Password";
                    } else if (value.length >= 20 || value.length <= 6) {
                      return "Password Must Be At Least 8 Characters";
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (authCubit.formKey.currentState!.validate()) {
                          authCubit.loginMethod();
                        }
                      },
                      child: (state is AuthLoadingState)
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(context.local.login),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.local.haveAccount),
                    TextButton(
                      onPressed: () {
                        Navigator.of(
                          context,
                        ).pushReplacementNamed(AppRoute.registerScreen);
                      },
                      child: Text(
                        context.local.register,
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    authCubit.close();
    super.dispose();
  }
}
