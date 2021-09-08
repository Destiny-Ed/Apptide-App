import 'dart:ui';

import 'package:apptide/Screens/MainPages/Upload/music.dart';
import 'package:apptide/Screens/MainPages/Upload/popular.dart';
import 'package:apptide/Screens/MainPages/Upload/video.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class UploadContentPage extends StatefulWidget {
  const UploadContentPage({Key? key}) : super(key: key);

  @override
  _UploadContentPageState createState() => _UploadContentPageState();
}

class _UploadContentPageState extends State<UploadContentPage> with SingleTickerProviderStateMixin {

  TabController? controller;

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller!.addListener(() {
      setState(() {
        currentIndex = controller!.index;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Upload Content",
          style: TextStyle(color: black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              // radius: 20,
              backgroundColor: buttonColor,
              child: Icon(
                Icons.person,
                color: white,
                size: 16,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(6.5),
            decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xf1A000000), width: 1)),
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 0.1,
              tabs: List.generate(tabTitle.length, (index){
                return currentIndex == index ? Card(
                  shadowColor: grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding:
                    const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: white,
                    ),
                    child: Text(
                      tabTitle[index],
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ) : Text(
                  tabTitle[index],
                  style: TextStyle(color: grey),
                );
              })
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
         MusicUpload(),
         VideoUpload(),
         ProductUpload()
        ],
      ),
    );
  }

  List<String> tabTitle = [
    "Music",
    "Video",
    "Product"
  ];
}
