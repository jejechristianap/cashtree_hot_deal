import 'dart:convert';

class ExampleModel {
  ExampleModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int? userId;
  int? id;
  String? title;
  bool? completed;

  factory ExampleModel.fromRawJson(String str) =>
      ExampleModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExampleModel.fromJson(Map<String, dynamic> json) => ExampleModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
