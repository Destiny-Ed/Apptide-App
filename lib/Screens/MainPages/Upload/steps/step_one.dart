import 'dart:ui';

import 'package:apptide/Contants/widget.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StepOne extends StatefulWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  _StepOneState createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  String itemValue = "Select Year";
  String genreValue = "Hip Hop";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ///Stepper
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    child: Text(
                      "1",
                      style: TextStyle(color: black),
                    ),
                    radius: 16,
                    backgroundColor: lightAmber,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  color: primaryColor,
                  height: 1.0,
                )),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    child: Text(
                      "2",
                      style: TextStyle(color: black),
                    ),
                    radius: 16,
                    backgroundColor: white,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  color: primaryColor,
                  height: 1.0,
                )),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: primaryColor,
                  child: CircleAvatar(
                    child: Text(
                      "3",
                      style: TextStyle(color: black),
                    ),
                    radius: 16,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          ///Upload music file field
          DottedBorder(
            radius: Radius.circular(10),
            color: primaryColor,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 152,
              decoration: BoxDecoration(
                color: lightAmber,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/upload.png",
                    width: 80,
                  ),
                  Text("Upload Music File"),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "BROWSE",
                    style: TextStyle(
                        color: primaryColor,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "MAX SIZE: 10MB",
              style: TextStyle(color: grey),
            ),
          ),

          ///Song title
          Container(
              margin: const EdgeInsets.only(top: 35, bottom: 15),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("SONG TITLE", style: TextStyle(fontSize: 14),),
                subtitle: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightAmber,
                    border: Border.all(color: primaryColor),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "e.g The Mountains",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ),
              )),

          ///RECORD LABEL
          Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text("RECORD LABEL", style: TextStyle(fontSize: 14),),
                subtitle: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightAmber,
                    border: Border.all(color: primaryColor),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "e.g The Mountains Group",
                      hintStyle: TextStyle(color: grey),
                    ),
                  ),
                ),
              )),

          ///YEAR RELEASED AND GENRE
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customDropDownField(
                    items: year,
                    itemValue: itemValue,
                    label: "YEAR RELEASED",
                    onChanged: (value) {
                      setState(() {
                        itemValue = value!;
                      });
                    }),
                const SizedBox(
                  width: 15,
                ),
                customDropDownField(
                    items: genre,
                    itemValue: genreValue,
                    label: "GENRE",
                    onChanged: (value) {
                      setState(() {
                        genreValue = value!;
                      });
                    })
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          GestureDetector(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 37),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: buttonColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Save & Continue",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "assets/arrow.png",
                    color: white,
                    width: 16,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  List<String> year = [
    "Select Year",
    "1919",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2020",
  ];

  List<String> genre = ["Hip Hop", "Gospel", "Blues", "Dance", "Jazz"];
}
