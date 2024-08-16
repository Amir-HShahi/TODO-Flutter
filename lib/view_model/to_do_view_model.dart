import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:todolist/model/to_do_model.dart';
import 'package:todolist/services/shared_preferences.dart';

class ToDoViewModel with ChangeNotifier {
  List<ToDoModel> _toDoGroup = [];

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

  void loadToDoData() async {
    final prefs = await getSharedPreferences();
    List<String>? mappedToDoGroup = prefs.getStringList("toDoGroup");
    if (mappedToDoGroup != null) {
      var loadedToDoGroup = fromStringListToToDoModel(mappedToDoGroup);
      _toDoGroup = loadedToDoGroup;
    }
    notifyListeners();
  }

  List<ToDoModel> fromStringListToToDoModel(List<String> list) {
    return list
        .map((toDoModel) => ToDoModel.fromJson(jsonDecode(toDoModel)))
        .toList();
  }
}
