import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  TextEditingController FullName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  // TextEditingController FullName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  padding: const EdgeInsets.fromLTRB(21, 17, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const ImageIcon(
                            AssetImage("assets/images/back_arrow_image.png"),
                            size: 34,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height/7.67,
                ),
                Text(
                  "Welcome Onboard!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 24, 0, 40),
                  child: Text(
                    "Let’s help you meet up your task",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),

                //Text fields
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    width: size.width/1.14,
                    height: size.height/16.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    child: TextField(
                      controller: FullName,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(color: Colors.grey)),
                        hintText: "Enter your Full Name",
                        hintStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    width: size.width/1.14,
                    height: size.height/16.88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,),
                    child: TextField(
                      controller: Email,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(color: Colors.grey)),
                        hintText: "Enter your Email address",
                        hintStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    width: size.width/1.14,
                    height: size.height/16.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    child: TextField(
                      controller: Password,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Create a Password",
                        hintStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Container(
                    width: size.width/1.14,
                    height: size.height/16.88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white),
                    child: TextField(
                      controller: Password,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                            BorderSide(width: 0, color: Colors.grey)),
                        hintText: "Confirm your Password",
                        hintStyle: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height/9.3,
                ),
                // button
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 85, 132, 122)),
                        shape: WidgetStateProperty.all(
                            const RoundedRectangleBorder()),
                        padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 64))),
                    onPressed: () {
                      // finished sign up or push sign in
                    },
                    //     Navigator.push(context,
                    //     CupertinoPageRoute(builder: (context) => signUp()
                    //     )),
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),

                SizedBox(height: size.height / 21.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?",
                        style: Theme.of(context).textTheme.bodySmall),
                    GestureDetector(
                        onTap: () {
                          // sign in push
                        },
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