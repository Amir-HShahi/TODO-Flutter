import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todolist/view_model/to_do_view_model.dart';
import 'package:todolist/view_model/user_info_view_model.dart';

List<SingleChildWidget> providersData = [
  ChangeNotifierProvider(create: (_) => ToDoViewModel()),
  ChangeNotifierProvider(create: (_) => UserInfoViewModel())
];
