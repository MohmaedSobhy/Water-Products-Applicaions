import 'package:flutter/material.dart';
import 'package:water_products/Feature/Favourite/presentation/screens/favourite_screen.dart';
import 'package:water_products/Feature/auth/presentation/screens/register_screen.dart';
import 'package:water_products/Feature/home/presentation/screens/main_screen.dart';
import 'package:water_products/Feature/onBorading/presentation/screens/on_boarding_screen.dart';

import '../../Feature/auth/presentation/screens/login_screen.dart';
import 'base_route.dart';

abstract class AppRoute {
  static const String loginScreen = "/Login Screen";
  static const String onBoardingScreen = "/On Boarding Screen";
  static const String registerScreen = "/Register Screen";
  static const String mainScreen = "/Main Screen";
  static const String waterProductDetails = "/ Water Product Details";
  static const String contactUs = "/Contackt Us";
  static const String checkOutScreen = "/ Check Out Screen";
  static const String favouriteScreen = "/ Favourite Screen";
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const OnBoardingScreen();
          },
        );
      case loginScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return LoginScreen();
          },
        );
      case registerScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return RegisterScreen();
          },
        );
      case mainScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return const MainScreen();
          },
        );
      case favouriteScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return const FavouriteScreen();
          },
        );
    }
    return null;
  }
}
