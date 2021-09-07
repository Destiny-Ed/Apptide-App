import 'package:apptide/Contants/route.dart';
import 'package:apptide/Screens/AuthScreen/login.dart';
import 'package:apptide/Screens/AuthScreen/sign_up.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';


class AuthSelectionPage extends StatelessWidget {
  const AuthSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/logo.png", width : 150),
                      const SizedBox(height: 10,),
                      Container(
                        child: Text("Dreams Come True"),
                      ),
                    ],
                  ),


                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          PageNavigator(ctx : context).nextPage(SignUpPage());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 25),
                          padding: const EdgeInsets.symmetric(vertical:15, horizontal: 35),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 16,
                                color: white,
                              ),
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          PageNavigator(ctx : context).nextPage(LoginPage());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical:15, horizontal: 35),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sign In",
                                style: TextStyle(color: white, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: 16,
                                color: white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
