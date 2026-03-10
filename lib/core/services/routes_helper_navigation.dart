import 'package:water_products/core/services/flutter_secure_storage.dart';

class RoutesHelper {
  static bool isAppeared = false;

  static Future<void> checkOnBoarding() async {
    isAppeared = await StorageHelper.isKeyExist(StorageHelper.onBoarding);
  }
}
