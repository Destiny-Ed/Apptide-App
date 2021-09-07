import 'dart:ui';

import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //For password field
  bool obcure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height,
              child: ListView(
                primary: true,
                children: [
                  //Return widgets here
                  //...........
                  //Top sign in text
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 60),
                    child: Column(
                      children: [
                        Text(
                          "Sign Up",
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
                  Column(
                    children: [
                      //email/username
                      Container(
                        child: Row(
                          children: [
                            //icon
                            CircleAvatar(
                              radius: 15,
                              child: Icon(
                                Icons.person,
                                size: 20,
                                color: grey,
                              ),
                              backgroundColor: lightAmber,
                            ),

                            const SizedBox(
                              width: 10,
                            ),
                            //textFormField
                            Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Username/Email",
                                      hintStyle: TextStyle(
                                          color: grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ))
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        margin: const EdgeInsets.only(bottom: 15),
                      ),

                      //Password
                      Container(
                        child: Row(
                          children: [
                            //icon
                            CircleAvatar(
                              radius: 15,
                              child: Icon(
                                Icons.security,
                                size: 20,
                                color: grey,
                              ),
                              backgroundColor: lightAmber,
                            ),

                            const SizedBox(
                              width: 10,
                            ),
                            //textFormField
                            Expanded(
                              child: TextFormField(
                                obscureText: obcure,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),

                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    obcure = !obcure;
                                  });
                                },
                                icon: Icon(
                                  obcure == true
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  size: 20,
                                  color: grey,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        margin: const EdgeInsets.only(bottom: 15),
                      ),
                      //lost your password text field
                      // Container(
                      //   alignment: Alignment.centerRight,
                      //   child: TextButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       "Lost your password?",
                      //       style:
                      //       TextStyle(decoration: TextDecoration.underline, color: grey),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),

                  //submit button

                  Container(
                    padding: const EdgeInsets.symmetric(vertical:15, horizontal: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(color: white),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 16,
                          color: white,
                        ),
                      ],
                    ),
                  ),

                  //social auth buttons
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 40),
                    alignment: Alignment.center,
                    child: Text("Or Sign Up with"),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //google icon
                        CircleAvatar(
                          backgroundColor: white,
                          child: Image.asset("assets/google.png"),
                        ),

                        const SizedBox(width: 30,),

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
            ),
          )
        ],
      ),
    );
  }
}
