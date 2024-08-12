import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/View/sign_up_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
                child: Image.asset(
                  "assets/images/homeImg.png",
                  width: size.width / 1.13,
                  height: size.height / 3.32,
                ),
              ),
              SizedBox(height: size.height / 17.58),
              Padding(
                padding: const EdgeInsets.fromLTRB(61, 0, 61, 0),
                child: Text(
                  "Get things done with TODo",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(74, 48, 74, 0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing. Maxime, tempore! Animi nemo aut atque, deleniti nihil dolorem repellendus.",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height / 11.4,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 85, 132, 122)),
                      shape: WidgetStateProperty.all(
                          const RoundedRectangleBorder()),
                      padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 64))),
                  onPressed: () => Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => signUp())),
                  child: Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
