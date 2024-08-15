import 'package:todolist/view/add_to_do_screen.dart';
import 'package:todolist/view/dashboard_screen.dart';
import 'package:todolist/view/sign_up_screen.dart';

var routesData = {
  "/AddToDoScreen": (context) => AddToDoScreen(),
  "/DashboardScreen": (context) => const DashboardScreen(),
  "/SignUpScreen": (context) => SignUpScreen()
};
