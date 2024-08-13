import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowToDoWidget extends StatefulWidget {
  const ShowToDoWidget({super.key});

  @override
  State<ShowToDoWidget> createState() => _ShowToDoWidgetState();
}

class _ShowToDoWidgetState extends State<ShowToDoWidget> {
  bool isDone = false;
  void toggleToDoDoneHandler() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    double scaledHeight(double scale) {
      return (screenSize.height * scale);
    }

    double scaledWidth(double scale) {
      return (screenSize.width * scale);
    }

    return Padding(
      padding: EdgeInsets.only(bottom: scaledHeight(0.023)),
      child: GestureDetector(
        onTap: toggleToDoDoneHandler,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: scaledHeight(0.023),
              width: scaledHeight(0.023),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  color: isDone ? const Color(0xff55847A) : Colors.white),
            ),
            SizedBox(width: scaledWidth(0.04)),
            Expanded(
              child: Text(
                "toggfjhfhoijbifbvjdfihgvdfpojidfhifpiojpjfdjhbifhihdfnifnble",
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
                softWrap: false,
                style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
