import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';

class DioClient {
  DioClient() {
    setup();
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.baseUrl,
      contentType: Endpoints.connectionType,
      connectTimeout: Endpoints.connectionTimeout,
      receiveTimeout: Endpoints.receiveTimeout,
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;

    interceptors.clear();

    interceptors.addAll(
      [
        AuthInterceptor(),
        //TODO add refresh token interceptor to list

        // RefreshTokenInterceptor(),
        AppLogInterceptor(),
      ],
    );
  }
}
