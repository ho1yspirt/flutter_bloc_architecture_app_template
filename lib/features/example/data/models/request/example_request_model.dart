import 'dart:convert';

class ExampleRequestModel {
  final String? example;
  final String? other;

  ExampleRequestModel({
    this.example,
    this.other,
  });

  ExampleRequestModel copyWith({
    String? example,
    String? other,
  }) =>
      ExampleRequestModel(
        example: example ?? this.example,
        other: other ?? this.other,
      );

  factory ExampleRequestModel.fromJson(String str) =>
      ExampleRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ExampleRequestModel.fromMap(Map<String, dynamic> json) =>
      ExampleRequestModel(
        example: json["example"],
        other: json["other"],
      );

  Map<String, dynamic> toMap() => {
        if (example != null) "example": example,
        if (other != null) "other": other,
      };
}
