import 'package:flutter/material.dart';
import 'package:water_products/Feature/auth/presentation/screens/register_screen.dart';
import 'package:water_products/Feature/auth/presentation/view/register_body_view.dart';
import 'package:water_products/Feature/onBorading/presentation/screens/on_boarding_screen.dart';
import 'package:water_products/core/theme/app_theme.dart';

class WaterApp extends StatelessWidget {
  const WaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: RegisterScreen(),
    );
  }
}
