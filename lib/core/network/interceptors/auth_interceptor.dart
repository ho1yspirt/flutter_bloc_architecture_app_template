import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';
import 'package:flutter_bloc_architecture_app_template/core/storage/storage.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String accessToken = await SharedPrefs.getAccessToken() ?? '';
    if (_needAuthorizationHeader(options)) {
      options.headers['Authorization'] = 'Bearer $accessToken';
      options.headers['accept'] = 'application/json';
    }
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    //TODO: add condition for auth

    //final String urlString = options.uri.toString();
    // if ( ) {
    //   return false;
    // } else {
    //   return true;
    // }
    return false;
  }
}
