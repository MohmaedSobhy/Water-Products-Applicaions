import 'package:flutter/material.dart';
import 'package:water_products/core/theme/app_colors.dart';
import 'package:water_products/core/theme/app_text_style.dart';

class CustomeTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextInputType inputType;
  final bool? obscureText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final int? maxLine;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomeTextFormField({
    super.key,
    this.label,
    required this.inputType,
    this.hint,
    this.prefixIcon,
    this.obscureText,
    this.maxLine,
    this.controller,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      cursorColor: AppColor.blue,
      maxLines: (maxLine == null) ? 1 : maxLine,
      style: AppTextStyle.text16Bold(context),
      obscureText: (obscureText == null) ? false : obscureText!,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColor.gray,
        suffixIconColor: AppColor.gray,

        hintStyle: AppTextStyle.text16Bold(
          context,
        ).copyWith(color: AppColor.gray),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.gray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.gray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.blue),
        ),
      ),
    );
  }
}
