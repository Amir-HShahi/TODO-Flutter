import 'package:flutter/cupertino.dart';

class ToDoModel with ChangeNotifier {
  String text;
  bool isDone = false;

  ToDoModel({required this.text});
}
