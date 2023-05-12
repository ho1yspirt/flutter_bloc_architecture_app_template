// To parse this JSON data, do
//
//     final exampleResponseModel = exampleResponseModelFromJson(jsonString);

import 'dart:convert';

ExampleErrorModel exampleErrorModelFromJson(String str) =>
    ExampleErrorModel.fromJson(json.decode(str));

String exampleErrorModelToJson(ExampleErrorModel data) =>
    json.encode(data.toJson());

class ExampleErrorModel {
  final String? example;

  ExampleErrorModel({
    this.example,
  });

  factory ExampleErrorModel.fromJson(Map<String, dynamic> json) =>
      ExampleErrorModel(
        example: json["example"],
      );

  Map<String, dynamic> toJson() => {
        "example": example,
      };
}
