import 'package:flutter/material.dart';

class ToDoInputFieldWidget extends StatelessWidget {
  const ToDoInputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme getTextThemes() {
      return Theme.of(context).textTheme;
    }

    var screenSize = MediaQuery.of(context).size;

    double scaledHeight(double scale) {
      return (screenSize.height * scale);
    }

    return SizedBox(
      width: double.infinity,
      child: TextField(
        style: getTextThemes().headlineSmall,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(scaledHeight(0.01))),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(scaledHeight(0.01))),
                borderSide: const BorderSide(color: Colors.black))),
      ),
    );
  }
}
