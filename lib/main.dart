import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers.dart';
import 'package:todolist/routes.dart';
import 'package:todolist/services/shared_preferences.dart';
import 'package:todolist/themes.dart';
import 'package:todolist/view/dashboard_screen.dart';
import 'package:todolist/view/home_screen.dart';
import 'package:todolist/view_model/user_info_view_model.dart';

void main() async {
  //check if sign up completed
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await getSharedPreferences();
  bool isSignUpCompleted =
      prefs.getString("isSignUpCompleted") == "true" ? true : false;

  runApp(
    MultiProvider(
      providers: providersData,
      child: MyApp(isSignUpCompleted: isSignUpCompleted),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isSignUpCompleted;
  const MyApp({super.key, required this.isSignUpCompleted});

  @override
  Widget build(BuildContext context) {
    var userInfoViewModel = context.read<UserInfoViewModel>();
    userInfoViewModel.loadUserInfoData();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themesData,
      home: isSignUpCompleted ? const DashboardScreen() : const HomeScreen(),
      routes: routesData,
    );
  }
}
