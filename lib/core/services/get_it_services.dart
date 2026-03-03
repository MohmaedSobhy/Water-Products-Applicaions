import 'package:get_it/get_it.dart';
import 'package:water_products/Feature/auth/data/repository/auth_respository_implmentation.dart';

abstract class GetItServices {
  static final getIt = GetIt.instance;

  static void setUp() {
    getIt.registerSingleton<AuthRespositoryImplmentation>(
      AuthRespositoryImplmentation(),
    );
  }
}
