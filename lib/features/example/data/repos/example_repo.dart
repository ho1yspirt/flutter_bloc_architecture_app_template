import 'package:flutter_bloc_architecture_app_template/core/network/network.dart';
import 'package:flutter_bloc_architecture_app_template/features/example/example.dart';

class ExampleRepo {
  ExampleRepo({required this.dio});

  final Dio dio;

  Future doExampleRequest({
    required ExampleRequestModel model,
  }) async {
    final Response response = await dio.post(
      Endpoints.example,
      data: model.toJson(),
    );
    try {
      final ExampleResponseModel result = ExampleResponseModel.fromJson(
        response.data,
      );
      return result;
    } catch (e) {
      final ExampleErrorModel errorResult = ExampleErrorModel.fromJson(
        response.data,
      );
      return errorResult;
    }
  }
}
