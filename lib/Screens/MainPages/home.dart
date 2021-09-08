import 'package:apptide/Screens/MainPages/BottomPages/Explore/explore.dart';
import 'package:apptide/Screens/MainPages/BottomPages/profile.dart';
import 'package:apptide/Screens/MainPages/BottomPages/unknown.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottonNavigationPages[_currentPage],
      bottomNavigationBar: Container(
        padding : const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: black,

        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: _bottomItems(),
          currentIndex: _currentPage,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: grey,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: primaryColor),
          selectedItemColor: primaryColor,
          onTap: (value) {
            setState(() {
              _currentPage = value;
            });
          },
        ),
      ),
    );
  }

  ///Pages to switch to
  final List<Widget> _bottonNavigationPages = <Widget>[
    ExplorePage(),
    UnknownPage(),
    UnknownPage(),
    UnknownPage(),
    ProfilePage(),
  ];

  ///BottomNavigation Items
  List<BottomNavigationBarItem> _bottomItems() {
    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.explore, size: 20), label: "Explore"),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/star.png",
            color: grey,
            width: 20,
          ),
          label: "unknown"),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/dollar.png",
            color: grey,
            width: 20,
          ),
          label: "unknown"),
      BottomNavigationBarItem(
          icon: Image.asset(
            "assets/naira.png",
            color: grey,
            width: 20,
          ),
          label: "unknown"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 20,
            color: grey,
          ),
          label: "Profile"),
    ];

    return items;
  }
}
