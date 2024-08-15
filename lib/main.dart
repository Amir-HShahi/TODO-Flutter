import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view/dashboard_screen.dart';
import 'package:todolist/view_model/to_do_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ToDoViewModel()),
      ],
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
        theme: ThemeData(
            fontFamily: "poppins",
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontFamily: "poppins",
                fontSize: 20.5,
                fontWeight: FontWeight.w500,
              ),
              titleSmall: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 85, 132, 122)),
              headlineSmall: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(188, 0, 0, 0)),
              bodySmall: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              bodyMedium: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              bodyLarge: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 85, 132, 122)),
            )),
        home: const Scaffold(
            backgroundColor: Color.fromARGB(255, 237, 237, 237),
            body: Center(
              child: DashboardScreen(),
            )));
  }
}
