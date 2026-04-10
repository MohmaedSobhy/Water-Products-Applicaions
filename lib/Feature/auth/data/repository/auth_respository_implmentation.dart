import 'package:dartz/dartz.dart';
import 'package:water_products/Feature/auth/data/model/login_request_model.dart';
import 'package:water_products/Feature/auth/data/model/register_request_model.dart';
import 'package:water_products/Feature/auth/data/model/user_model.dart';
import 'package:water_products/Feature/auth/data/repository/auth_respository.dart';
import 'package:water_products/core/api/dio_services.dart';
import 'package:water_products/core/api/end_points.dart';
import 'package:water_products/core/error/failure.dart';

class AuthRespositoryImplmentation implements AuthRespository {
  @override
  Future<Either<Failure, UserModel>> register(
    RegisterRequestModel model,
  ) async {
    try {
      var response = await DioHelper.postData(
        url: EndPoints.register,
        body: model.toJson(),
      );
      return Right(UserModel.fromJson(response.data));
    } catch (e) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> login(
    LoginRequestModel loginRequest,
  ) async {
    try {
      var response = await DioHelper.postData(
        url: EndPoints.login,
        body: loginRequest.toJson(),
      );
      return Right(UserModel.fromJson(response.data));
    } catch (e) {
      return Left(Failure());
    }
  }
}
