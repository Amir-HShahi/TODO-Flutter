import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/services/toast_messenger.dart';
import 'package:todolist/view/components/text_fields.dart';
import 'package:todolist/view_model/utility/empty_input_exception.dart';
import 'package:todolist/view_model/utility/not_matching_password_exception.dart';

import '../view_model/user_info_view_model.dart';

class SignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  SignUpScreen({super.key});

  void signUpHandler(BuildContext context) {
    var viewModel = context.read<UserInfoViewModel>();
    try {
      viewModel.signUpUser(nameController.text, emailController.text,
          passwordController.text, confirmPasswordController.text);
      Navigator.pushNamed(context, "/DashboardScreen");
    } on EmptyInputException catch (e) {
      sendToastMessage(e.cause);
    } on NotMatchingPasswordException catch (e) {
      sendToastMessage(e.cause);
    }
  }

  void signInHandler(BuildContext context) {}

  void backIconHandler(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var sHeight = size.height;
    var sWidth = size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // icon
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      sWidth / 18.57, sHeight / 49.64, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () => backIconHandler(context),
                          icon: const ImageIcon(
                            AssetImage("assets/images/back_arrow_image.png"),
                            size: 34,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: sHeight / 7.67,
                ),
                Text(
                  "Welcome Onboard!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, sHeight / 35.16, 0, sHeight / 21.5),
                  child: Text(
                    "Let’s help you meet up your task",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),

                //Text fields
                SignStyledTextField(
                    hintText: "Enter your Full Name",
                    controller: nameController),
                SignStyledTextField(
                    hintText: "Enter your Email address",
                    controller: emailController),
                SignStyledTextField(
                    hintText: "Create a Password",
                    controller: passwordController),
                SignStyledTextField(
                    hintText: "Confirm your Password",
                    controller: confirmPasswordController),

                SizedBox(
                  height: sHeight / 9.3,
                ),
                // button
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 85, 132, 122)),
                        shape: WidgetStateProperty.all(
                            const RoundedRectangleBorder()),
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(horizontal: sWidth / 6))),
                    onPressed: () => signUpHandler(context),
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),

                SizedBox(
                  height: sHeight / 21.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextButton(
                        onPressed: () => signInHandler(context),
                        child: Text(
                          "Sign In",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
