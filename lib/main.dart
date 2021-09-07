import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(AppTide());
}


class AppTide extends StatelessWidget {
  const AppTide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: "Kodchasan"
      ),
      home: Splash(),
    );
  }
}
