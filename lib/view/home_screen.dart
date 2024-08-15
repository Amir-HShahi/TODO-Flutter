import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/view/sign_up_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sHeight = size.height;
    var sWidth = size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    sWidth / 15.6, sHeight / 8.44, sWidth / 15.6, 0),
                child: Image.asset(
                  "assets/images/homeImg.png",
                  width: sWidth / 1.13,
                  height: sHeight / 3.32,
                ),
              ),
              SizedBox(
                height: sHeight / 17.58,
              ),
              Padding(
                padding:
                    EdgeInsets.fromLTRB(sWidth / 6.39, 0, sWidth / 6.39, 0),
                child: Text(
                  "Get things done with TODo",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    sWidth / 5.27, sHeight / 17.58, sWidth / 5.27, 0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur. Maxime! nemo aut. Lorem ipsum dolor sit amet, consectetur. Maxime! nemo aut.",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: sHeight / 11.4,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 85, 132, 122)),
                      shape: WidgetStateProperty.all(
                          const RoundedRectangleBorder()),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: sWidth / 6))),
                  onPressed: () => homePageHandler(context),
                  child: Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void homePageHandler(BuildContext context) {
    Navigator.pushNamed(context, "/SignUpScreen");
  }
}
