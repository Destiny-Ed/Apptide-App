import 'package:apptide/Contants/route.dart';
import 'package:flutter/material.dart';

import 'AuthScreen/auth_selection_page.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Navigate to Login or Homepage base on the user authentication state
    Future.delayed(const Duration(seconds: 3), () {
      PageNavigator(ctx: context).nextPageAndRemove(AuthSelectionPage());
    });
    return Scaffold(
      
      body: Center(
        child: Image.asset("assets/logo.png", width : 150),
      ),
    );
  }
}
