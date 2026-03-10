import 'package:water_products/core/routes/app_route.dart';
import 'package:water_products/core/services/flutter_secure_storage.dart';

class RoutesHelper {
  static String currentRoute = AppRoute.onBoardingScreen;

  static Future<void> checkOnBoarding() async {
    bool isAppeared = await StorageHelper.isKeyExist(StorageHelper.onBoarding);
    if (isAppeared) {
      bool found = await StorageHelper.isKeyExist(StorageHelper.accessTokenKey);
      if (found) {
        currentRoute = AppRoute.mainScreen;
      } else {
        currentRoute = AppRoute.loginScreen;
      }
    }
  }
}
