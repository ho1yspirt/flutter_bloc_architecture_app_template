// To parse this JSON data, do
//
//     final exampleResponseModel = exampleResponseModelFromJson(jsonString);

import 'dart:convert';

ExampleResponseModel exampleResponseModelFromJson(String str) =>
    ExampleResponseModel.fromJson(json.decode(str));

String exampleResponseModelToJson(ExampleResponseModel data) =>
    json.encode(data.toJson());

class ExampleResponseModel {
  final String? example;

  ExampleResponseModel({
    this.example,
  });

  factory ExampleResponseModel.fromJson(Map<String, dynamic> json) =>
      ExampleResponseModel(
        example: json["example"],
      );

  Map<String, dynamic> toJson() => {
        "example": example,
      };
}
