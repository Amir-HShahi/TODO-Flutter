import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/to_do_model.dart';
import 'package:todolist/view_model/to_do_view_model.dart';

class ShowToDoWidget extends StatefulWidget {
  final ToDoModel toDoModel;
  const ShowToDoWidget({super.key, required this.toDoModel});

  @override
  State<ShowToDoWidget> createState() => _ShowToDoWidgetState();
}

class _ShowToDoWidgetState extends State<ShowToDoWidget> {
  @override
  Widget build(BuildContext context) {
    var viewModel = context.read<ToDoViewModel>();
    void toggleToDoDoneHandler() {
      setState(() {
        widget.toDoModel.isDone = !widget.toDoModel.isDone;
        viewModel.saveToDoListData();
      });
    }

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
                  color: widget.toDoModel.isDone
                      ? const Color(0xff55847A)
                      : Colors.white),
            ),
            SizedBox(width: scaledWidth(0.04)),
            Expanded(
              child: Text(
                widget.toDoModel.text,
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
