// import 'package:dio/dio.dart';
// import 'package:water_products/core/services/flutter_secure_storage.dart';

// class AuthInterceptor extends Interceptor {
//   final Dio dio;

//   AuthInterceptor(this.dio);

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     final token = await StorageHelpe

//     if (token != null) {
//       options.headers['Authorization'] = 'Bearer $token';
//     }

//     handler.next(options);
//   }

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401) {
//       final refreshToken = await SecureStorageService.getRefreshToken();

//       if (refreshToken == null) {
//         return handler.next(err);
//       }

//       try {
//         final response = await dio.post(
//           "/auth/refresh",
//           data: {"refresh_token": refreshToken},
//         );

//         final newAccessToken = response.data["access_token"];

//         await SecureStorageService.saveAccessToken(newAccessToken);

//         // retry request
//         final requestOptions = err.requestOptions;

//         requestOptions.headers["Authorization"] = "Bearer $newAccessToken";

//         final cloneResponse = await dio.fetch(requestOptions);

//         return handler.resolve(cloneResponse);
//       } catch (e) {
//         await SecureStorageService.clearTokens();
//         return handler.next(err);
//       }
//     }

//     return handler.next(err);
//   }
// }
