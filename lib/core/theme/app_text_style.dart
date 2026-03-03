import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyle {
  static TextStyle text24Bold(BuildContext context) {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle text14Bold(BuildContext context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppColor.darkGray,
    );
  }

  static TextStyle text16Bold(BuildContext context) {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }

  static TextStyle text20Bold(BuildContext context) {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    );
  }
}
