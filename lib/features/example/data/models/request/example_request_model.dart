// To parse this JSON data, do
//
//     final exampleRequestModel = exampleRequestModelFromJson(jsonString);

import 'dart:convert';

ExampleRequestModel exampleRequestModelFromJson(String str) =>
    ExampleRequestModel.fromJson(json.decode(str));

String exampleRequestModelToJson(ExampleRequestModel data) =>
    json.encode(data.toJson());

class ExampleRequestModel {
  final String? example;

  ExampleRequestModel({
    this.example,
  });

  factory ExampleRequestModel.fromJson(Map<String, dynamic> json) =>
      ExampleRequestModel(
        example: json["example"],
      );

  Map<String, dynamic> toJson() => {
        "example": example,
      };
}
