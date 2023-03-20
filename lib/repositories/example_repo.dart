import 'package:dio/dio.dart';
import 'package:flutter_bloc_architecture_app_template/network/endpoints.dart';

class ExampleRepo {
  final Dio dio;
  const ExampleRepo({required this.dio});

  Future exampleAction({required String someData}) async {
    final response = await dio.get('${Endpoints.baseUrl}/some/endpoint/');
    return response;
  }
}
