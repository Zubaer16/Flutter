// To parse this JSON data, do

//     final onboardingModel = onboardingModelFromJson(jsonString);

import 'dart:convert';

List<OnboardingModel> onboardingModelFromJson(String str) =>
    List<OnboardingModel>.from(
        json.decode(str).map((x) => OnboardingModel.fromJson(x)));

String onboardingModelToJson(List<OnboardingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OnboardingModel {
  String title;
  String description;
  String source;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.source,
  });

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      OnboardingModel(
        title: json["title"],
        description: json["description"],
        source: json["source"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "source": source,
      };
}
