import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/presentation/controller/auth_cubit.dart';
import 'package:water_products/Feature/auth/presentation/controller/auth_state.dart';
import 'package:water_products/core/services/get_it_services.dart';
import 'package:water_products/core/utils/app_assets.dart';
import 'package:water_products/core/utils/app_string.dart';
import 'package:water_products/core/widgets/custome_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/auth_respository_implmentation.dart';

class RegisterBodyView extends StatefulWidget {
  const RegisterBodyView({super.key});

  @override
  State<RegisterBodyView> createState() => _RegisterBodyViewState();
}

class _RegisterBodyViewState extends State<RegisterBodyView> {
  late final AuthCubit authCubit;
  @override
  void initState() {
    authCubit = AuthCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: BlocProvider(
        create: (context) => authCubit,
        child: Form(
          key: authCubit.formKey,
          child: ListView(
            children: [
              Image(image: AssetImage(AppImageAssets.appLogo)),
              CustomeTextFormField(
                inputType: TextInputType.name,
                hint: "Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name";
                  } else if (value.length >= 30 || value.length <= 5) {
                    return "Name Must Be At Least 5 Characters";
                  }
                  return null;
                },
                controller: authCubit.nameController,
              ),
              const SizedBox(height: 10),
              CustomeTextFormField(
                inputType: TextInputType.emailAddress,
                hint: "Email",
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
                controller: authCubit.emailController,
              ),
              const SizedBox(height: 10),
              CustomeTextFormField(
                inputType: TextInputType.name,
                hint: "Password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Password";
                  } else if (value.length >= 20 || value.length <= 6) {
                    return "Password Must Be At Least 8 Characters";
                  }
                  return null;
                },
                obscureText: true,
                controller: authCubit.passwordController,
              ),
              const SizedBox(height: 15),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      if (authCubit.formKey.currentState!.validate()) {
                        authCubit.registerMethod();
                      }
                    },
                    child: (state is AuthLoadingState)
                        ? const CircularProgressIndicator(color: Colors.white)
                        : Text("Register"),
                  );
                },
              ),

              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have Account ?"),
                  TextButton(onPressed: () {}, child: Text("Login?")),
                ],
              ),
            ],
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
