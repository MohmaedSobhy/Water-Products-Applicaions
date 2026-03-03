import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/auth/data/model/login_request_model.dart';
import 'package:water_products/Feature/auth/data/model/register_request_model.dart';
import 'package:water_products/Feature/auth/data/model/user_model.dart';
import 'package:water_products/core/error/failure.dart';

abstract class AuthRespository {
  Future<Either<Failure, UserModel>> register(
    RegisterRequestModel registerRequest,
  );
  Future<Either<Failure, UserModel>> login(LoginRequestModel loginRequest);
}
