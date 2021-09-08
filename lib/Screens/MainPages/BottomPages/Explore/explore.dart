import 'package:apptide/Contants/route.dart';
import 'package:apptide/Screens/MainPages/BottomPages/Explore/sub_pages.dart';
import 'package:apptide/Screens/MainPages/BottomPages/Explore/top_banner_view.dart';
import 'package:apptide/Screens/MainPages/Upload/upload.dart';
import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with SingleTickerProviderStateMixin {
  bool _isPlaying = true;

  int _playingIndex = 0;

  late AnimationController controller;

  @override
   void initState() {
     controller = AnimationController(
       vsync: this,
       duration: const Duration(seconds: 5),
     )..addListener(() {
         setState(() {});
       });
     controller.repeat(reverse: false);
     super.initState();
   }
  ///
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Explore",
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: black,
                size: 20,
              )),
          GestureDetector(
            onTap: () {
              PageNavigator(ctx: context).nextPage(UploadContentPage());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: white,
                radius: 12,
                child: Image.asset(
                  "assets/upload.png",
                  color: black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.of(context).size.height -
                      (_isPlaying == true ? 250 : 155),
                  child: ListView(
                    primary: true,
                    children: [
                      ///Top container
                      TopBannerView(),

                      ViewContainer(image_talents, title_talents, "Top Talents",
                          (index) {
                        setState(() {
                          _isPlaying = true;
                          _playingIndex = index!;
                        });
                      }),
                      ViewContainer(image_popular, title_popular, "Popular",
                          (index) {
                        setState(() {
                          _isPlaying = true;
                          _playingIndex = index!;
                        });
                      }),

                      ViewContainer(image_popular, title_talents, "Trending",
                          (index) {
                        setState(() {
                          _isPlaying = true;
                          _playingIndex = index!;
                        });
                      }),
                    ],
                  ),
                ),
              )
            ],
          ),

          ///Bottom container showing currently playing music
          Positioned(
            bottom: 0,
            child: _isPlaying == false
                ? Container()
                : Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    // height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Play , next buttons
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset("assets/backward.png")),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage(image_talents[_playingIndex]),
                                        child: Image.asset("assets/play.png"),
                                      ),
                                      Positioned(
                                        child: CircularProgressIndicator(
                                          value: controller.value,
                                          backgroundColor: grey,
                                          color: grey,
                                          valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          "assets/fast_forward.png")),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerLeft,
                                child: Text("1:34 / 3:26",
                                    style: TextStyle(color: grey)),
                              )
                            ],
                          ),
                        ),

                        ///Current playing music title
                        Container(
                            child: Row(
                          children: [
                            Text(
                              "Fendi - Blaqbones\nft Joeboy",
                              style: TextStyle(color: grey),
                              textAlign: TextAlign.end,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isPlaying = !_isPlaying;
                                  });
                                },
                                icon: Image.asset("assets/close.png")),
                          ],
                        ))
                      ],
                    )),
          )
        ],
      ),
    );
  }

  List<String> image_talents = [
    "assets/talent_one.png",
    "assets/talent_two.png",
    "assets/talent_three.png",
    "assets/talent_one.png",
    "assets/talent_two.png",
    "assets/talent_three.png",
    "assets/talent_one.png",
    "assets/talent_two.png",
    "assets/talent_three.png",
  ];

  List<String> title_talents = [
    "Oxygen",
    "Bag",
    "Oxygen",
    "Oxygen",
    "Bag",
    "Oxygen",
    "Oxygen",
    "Bag",
    "Oxygen",
  ];

  List<String> image_popular = [
    "assets/popular_one.png",
    "assets/popular_two.png",
    "assets/popular_three.png",
    "assets/popular_one.png",
    "assets/popular_two.png",
    "assets/popular_three.png",
    "assets/popular_one.png",
    "assets/popular_two.png",
    "assets/popular_three.png",
  ];

  List<String> title_popular = [
    "Apollo",
    "Gucci Gang",
    "Apollo",
    "Apollo",
    "Gucci Gang",
    "Apollo",
    "Apollo",
    "Gucci Gang",
    "Apollo",
  ];
}
