import 'package:flutter/material.dart';
import 'package:water_products/core/theme/app_colors.dart' show AppColor;

abstract class AppTheme {
  static ThemeData theme = ThemeData(
    primaryColor: AppColor.blue,
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: AppBarTheme(backgroundColor: AppColor.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.blue2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        alignment: AlignmentDirectional.center,
        minimumSize: WidgetStateProperty.all<Size>(Size(double.infinity, 50)),
        backgroundColor: WidgetStateProperty.all<Color>(AppColor.blue),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        textStyle: WidgetStateProperty.all<TextStyle>(
          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
