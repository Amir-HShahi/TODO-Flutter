import 'package:provider/provider.dart';
import 'package:todolist/view_model/to_do_view_model.dart';

var providersData = [
  ChangeNotifierProvider(create: (_) => ToDoViewModel()),
];
