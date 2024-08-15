import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/providers.dart';
import 'package:todolist/routes.dart';
import 'package:todolist/themes.dart';
import 'package:todolist/view/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providersData,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const HomeScreen(),
      routes: routesData,
    );
  }
}
