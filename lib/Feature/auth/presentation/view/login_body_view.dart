import 'package:flutter/material.dart';

import '../../../../core/extension/app_localization_extension.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/custome_text_form_field.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 2),
      child: ListView(
        children: [
          Image(image: AssetImage(AppImageAssets.appLogo)),
          CustomeTextFormField(
            inputType: TextInputType.emailAddress,
            hint: context.local.enterEmail,
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
          ElevatedButton(onPressed: () {}, child: Text(context.local.register)),
        ],
      ),
    );
  }
}
