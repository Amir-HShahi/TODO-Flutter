import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/view/components/show_to_do_widget.dart';

class ShowTodayTasksWidget extends StatelessWidget {
  const ShowTodayTasksWidget({super.key});

  void tapAddToDoHandler() {}

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Todo Tasks", style: getTextThemes().titleLarge),
        SizedBox(height: scaledHeight(0.02)),
        Container(
          width: double.infinity,
          height: scaledHeight(0.28),
          padding: EdgeInsets.symmetric(
              vertical: scaledHeight(0.018), horizontal: scaledWidth(0.08)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.all(Radius.circular(scaledHeight(0.03))),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Daily tasks.",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  const Spacer(),
                  GestureDetector(
                      onTap: tapAddToDoHandler,
                      child: Icon(Icons.add_circle_rounded,
                          size: scaledWidth(0.08))),
                ],
              ),
              SizedBox(height: scaledHeight(0.018)),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ShowToDoWidget(),
                      ShowToDoWidget(),
                      ShowToDoWidget(),
                      ShowToDoWidget(),
                      ShowToDoWidget()
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
