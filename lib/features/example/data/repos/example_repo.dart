import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';
import 'package:flutter_bloc_architecture_app_template/features/example/example.dart';

class ExampleRepo {
  ExampleRepo({required this.dio});

  final Dio dio;

  Future<ExampleResponseModel> remind({
    required ExampleRequestModel model,
  }) async {
    final Response response = await dio.post(
      Endpoints.example,
      data: model.toJson(),
    );
    final ExampleResponseModel result = ExampleResponseModel.fromJson(
      response.data,
    );
    return result;
  }
}
