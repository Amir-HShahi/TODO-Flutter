import 'package:flutter/cupertino.dart';

class ToDoModel with ChangeNotifier {
  String text;
  bool isDone;

  ToDoModel({required this.text, required this.isDone});

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      ToDoModel(text: json["text"], isDone: json["isDone"]);

  Map<String, dynamic> toJson() => {"text": text, "isDone": isDone};
}
