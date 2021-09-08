import 'package:apptide/Contants/route.dart';
import 'package:flutter/material.dart';

import 'AuthScreen/auth_selection_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    //Navigate to Login or Homepage base on the user authentication state
    Future.delayed(const Duration(seconds: 3), () {
      if(mounted){
        PageNavigator(ctx: context).nextPageAndRemove(AuthSelectionPage());
      }
    });
    return Scaffold(

      body: Center(
        child: Hero(
          tag: "app",
            child: Image.asset("assets/logo.png", width : 150)),
      ),
    );
  }
}
