import 'dart:ui';

import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class StepOne extends StatefulWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: lightAmber,
              border: Border.all(style: BorderStyle)
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/upload.png",
                  width: 80,
                ),
                Text("Upload Music File"),
                const SizedBox(height: 8,),
                Text(
                  "BROWSE",
                  style: TextStyle(
                      color: primaryColor,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
