import 'package:dio/dio.dart';
import 'package:flutter_bloc_architecture_app_template/network/network.dart';

class DioClient {
  late final Dio dio;

  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: Endpoints.baseUrl,
            contentType: Endpoints.connectionType,
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
          ),
        )..interceptors.addAll(
            [
              LogInterceptor(),
              //TODO: add interceptors
            ],
          );
}
