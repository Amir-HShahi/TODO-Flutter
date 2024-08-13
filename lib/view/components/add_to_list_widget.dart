import 'package:flutter/material.dart';

class AddToListWidget extends StatelessWidget {
  final Function() onPressed;
  const AddToListWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    TextTheme getTextThemes() {
      return Theme.of(context).textTheme;
    }

    var screenSize = MediaQuery.of(context).size;

    double scaledHeight(double scale) {
      return (screenSize.height * scale);
    }

    double scaledWidth(double scale) {
      return (screenSize.width * scale);
    }

    return Container(
      width: scaledWidth(0.56),
      height: scaledHeight(0.05),
      color: const Color(0xff55847A),
      alignment: Alignment.center,
      child: Text("Add to list", style: getTextThemes().bodyMedium),
    );
  }
}
