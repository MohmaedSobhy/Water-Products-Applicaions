import 'package:flutter/material.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/services/get_it_services.dart';
import 'package:water_products/water_app.dart';
import 'package:device_preview/device_preview.dart';

import 'core/services/routes_helper_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  GetItServices.setUp();
  await RoutesHelper.checkOnBoarding();
  // runApp(DevicePreview(enabled: true, builder: (context) => const WaterApp()));
  runApp(WaterApp());
}
