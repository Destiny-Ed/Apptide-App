import 'dart:async';

import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class TopBannerView extends StatefulWidget {
  @override
  _TopBannerViewState createState() => _TopBannerViewState();
}

class _TopBannerViewState extends State<TopBannerView> {
  ///For Banner Ads show
  int bannerIndex = 0;

  ///Banner Ads End
  ///
  final PageController _pageController = PageController();

  // int currentIndex = 0;
  int? totalLength = 3;
  late Timer _timer;


  @override
  void initState() {
    //animate Banner every 3 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      setState(() {
        if (totalLength != null) {
          if (bannerIndex != totalLength! - 1) {
            _pageController.nextPage(
                duration: Duration(seconds: 1), curve: Curves.easeIn);
          } else {
            _pageController.jumpToPage(0);
          }
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      // margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 140,
      child: Stack(
        children: [
          Column(
              children: <Widget>[
            Expanded(
              child: PageView(
                onPageChanged: (int value) {
                  setState(() {
                    bannerIndex = value;
                  });
                },
                controller: _pageController,
                children: List.generate(totalLength!, (index) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      height: 120,
                      child: Image.asset(
                        "assets/top_banner.png",
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (BuildContext context,
                            Object error, StackTrace? stackTrace) {
                          return Center(
                            child: Text('No internet'
                                '\nconnection'),
                          );
                        },
                      ),
                    )
                  );
                })
              ),
            ),
            //Banner Row Indicator

          ]),

          ///Indicator
          Positioned(
            bottom: 15,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(
                totalLength!,
                    (int index) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: bannerIndex == index
                        ? white
                        : grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
