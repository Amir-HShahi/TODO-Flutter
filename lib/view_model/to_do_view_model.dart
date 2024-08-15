import 'package:flutter/cupertino.dart';
import 'package:todolist/model/to_do_model.dart';

class ToDoViewModel with ChangeNotifier {
  final List<ToDoModel> _toDoGroup = [];

  List<ToDoModel> getToDoGroup() {
    return _toDoGroup;
  }

  void addToDo(String text) {
    _toDoGroup.add(ToDoModel(text: text));
    notifyListeners();
  }
}