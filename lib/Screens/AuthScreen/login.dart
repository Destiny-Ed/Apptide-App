import 'dart:ui';

import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListView(
                primary: true,
                children: [
                  //Return widgets here
                  //...........
                  //Top sign in text
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Welcome Back")
                      ],
                    ),
                  ),

                  //email and password field
                  //....
                  //email/username
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            //icon
                            CircleAvatar(
                              child: Icon(Icons.person),
                              backgroundColor: lightAmber,
                            ),
                            //textFormField
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username/Email"),
                            ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            //icon
                            CircleAvatar(
                              child: Icon(Icons.person),
                              backgroundColor: lightAmber,
                            ),
                            //textFormField
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username/Email"),
                            ))
                          ],
                        ),
                      ),
                      //lost your password text field
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Lost your password?",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),

                  //submit button

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: black,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(color: white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: black,
                        ),
                      ],
                    ),
                  ),

                  //social auth buttons
                  Container(
                    child: Text("Or Sign in with"),
                  ),

                  Container(
                    child: Row(
                      children: [
                        //google icon

                        CircleAvatar(
                          backgroundColor: white,
                          child: Image.asset("assets/google.png"),
                        ),

                        CircleAvatar(
                          backgroundColor: white,
                          child: Image.asset("assets/fb.png"),
                        ),

                        //facebook icon
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
