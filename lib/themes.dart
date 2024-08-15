import 'package:flutter/material.dart';

var themesData = ThemeData(
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
          fontFamily: "poppins", fontSize: 14, fontWeight: FontWeight.w500),
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
    ));
