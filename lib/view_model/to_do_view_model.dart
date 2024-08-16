import 'package:flutter/cupertino.dart';
import 'package:todolist/model/to_do_model.dart';
import 'package:todolist/services/shared_preferences.dart';

class ToDoViewModel with ChangeNotifier {
  final List<ToDoModel> _toDoGroup = [];

  List<ToDoModel> getToDoGroup() {
    return _toDoGroup;
  }

  void addToDo(String text) {
    _toDoGroup.add(ToDoModel(text: text, isDone: false));
    saveToDoListData();
    notifyListeners();
  }

  void saveToDoListData() {
    saveListKeyValue("toDoGroup", objectToJsonStringList(_toDoGroup));
  }
}