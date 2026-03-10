import 'package:flutter/material.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/services/get_it_services.dart';
import 'package:water_products/water_app.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  DioHelper.init();
  GetItServices.setUp();
  runApp(DevicePreview(enabled: true, builder: (context) => const WaterApp()));
}
