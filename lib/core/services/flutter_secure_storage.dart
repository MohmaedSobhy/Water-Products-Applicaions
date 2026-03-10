import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelper {
  static late FlutterSecureStorage storage;

  static const accessTokenKey = "access_token";
  static const refreshTokenKey = "refresh_token";
  static const onBoarding = "onBoarding";

  static init() async {
    storage = const FlutterSecureStorage();
  }

  static void addKey({required String key, required dynamic value}) async {
    await storage.write(key: key, value: value);
  }

  static void deleteKey({required String key}) async {
    await storage.delete(key: key);
  }

  static Future<dynamic> getValue({required String key}) async {
    return await storage.read(key: key);
  }

  static void deleteAllData() async {
    await storage.deleteAll();
  }

  static Future<bool> isKeyExist(String key) async {
    bool exists = await storage.containsKey(key: key);
    return exists;
  }

  static Future<String?> getAccessToken() async {
    return await storage.read(key: accessTokenKey);
  }

  static Future<String?> getRefreshToken() async {
    return await storage.read(key: refreshTokenKey);
  }

  static Future<void> saveAccessToken(String token) async {
    await storage.write(key: accessTokenKey, value: token);
  }

  static Future<void> saveRefreshToken(String token) async {
    await storage.write(key: refreshTokenKey, value: token);
  }

  static Future<void> saveOnBoarding() async {
    await storage.write(key: onBoarding, value: "Appeared");
  }
}
