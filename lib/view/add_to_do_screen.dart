import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/view/components/add_to_list_widget.dart';
import 'package:todolist/view/components/to_do_input_field_widget.dart';
import 'package:todolist/view_model/to_do_view_model.dart';

class AddToDoScreen extends StatelessWidget {
  const AddToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<ToDoViewModel>();
    String toDoText = "";

    void onChangedHandler(String text) {
      toDoText += text;
    }

    void pressAddToListHandler() {
      viewModel.addToDo(toDoText);
    }

    void tapBackButtonHandler() {

    }

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

    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: scaledWidth(0.07),
              right: scaledWidth(0.07),
              top: scaledHeight(0.04),
              bottom: scaledHeight(0.13)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: scaledHeight(0.02)),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: tapBackButtonHandler,
                        child: Image(
                            image: const AssetImage("assets/images/back_arrow_image.png"),
                            height: scaledHeight(0.03)),
                      ),
                      const Spacer()
                    ],
                  ),
                  SizedBox(height: scaledHeight(0.04)),
                  Text("Welcome OnBoard!", style: getTextThemes().titleLarge),
                  SizedBox(height: scaledHeight(0.05)),
                  Image(
                      image: const AssetImage("assets/images/add_to_do_image.png"),
                      height: scaledHeight(0.2)),
                  SizedBox(height: scaledHeight(0.03)),
                  Text("Add What your want to do later on..",
                      style: getTextThemes().titleSmall),
                  SizedBox(height: scaledHeight(0.04)),
                  ToDoInputFieldWidget(onChanged: onChangedHandler),
                  SizedBox(height: scaledHeight(0.2)),
                  AddToListWidget(onPressed: pressAddToListHandler)
            ],
          ),
        ),
      )),
    );
  }
}
