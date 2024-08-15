import 'package:flutter/material.dart';

class SignStyledTextField extends StatelessWidget {
  final String hintText;

  const SignStyledTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.height / 32.46),
          child: SizedBox(
            width: size.width / 1.14,
            height: size.height / 16.88,
            child: TextField(
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
