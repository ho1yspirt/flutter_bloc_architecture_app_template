//TODO: modify token refresh interceptor up to you

// import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';
// import 'package:flutter_bloc_architecture_app_template/core/storage/storage.dart';

// class RefreshTokenInterceptor extends Interceptor {
//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     final String accessToken = await SharedPrefs.getAccessToken() ?? '';
//     final String refreshToken = await SharedPrefs.getRefreshToken() ?? '';
//     if (_needRefreshToken(options, accessToken)) {
//       await postRefreshToken(
//         model: RefreshTokenRequest(refreshToken: refreshToken),
//       );
//     }
//     super.onRequest(options, handler);
//   }

//   bool _needRefreshToken(RequestOptions options, String accessToken) {
//     if (accessToken == '') return false;
//     return JwtDecoder.isExpired(accessToken);
//   }

//   Future<void> postRefreshToken({required RefreshTokenRequest model}) async {
//     final Response response = await DioClient().dio.post(
//           Endpoints.refresh,
//           data: model.toJson(),
//         );
//     final LoginResponse result = LoginResponse.fromJson(
//       response.data,
//     );
//     SharedPrefs.setAccessToken(token: result.data!.apiToken);
//     SharedPrefs.setRefreshToken(token: result.data!.refreshToken);
//   }
// }
