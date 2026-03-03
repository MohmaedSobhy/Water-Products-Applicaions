import 'package:flutter/material.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/services/get_it_services.dart';
import 'package:water_products/water_app.dart';

void main() {
  DioHelper.init();
  GetItServices.setUp();
  runApp(const WaterApp());
}
