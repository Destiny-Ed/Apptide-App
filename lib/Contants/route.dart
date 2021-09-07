import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigator {
  PageNavigator({required this.ctx});

  BuildContext? ctx;

  //Navigate and remove back stack
  void nextPageAndRemove(Widget? page) {
    Navigator.pushAndRemoveUntil(
        ctx!, CupertinoPageRoute(builder: (_) => page!), (route) => false);
  }

  //Navigator and reserve back stack
  void nextPage(Widget? page) {
    Navigator.push(ctx!, CupertinoPageRoute(builder: (_) => page!));
  }
}
