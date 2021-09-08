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

class _ExplorePageState extends State<ExplorePage> {
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height - 150,
              child: ListView(
                primary: true,

                children: [
                  ///Top container
                  TopBannerView(),

                  ViewContainer(image_talents, title_talents, "Top Talents", null),
                  ViewContainer(image_popular, title_popular, "Popular", null),

                  ViewContainer(image_popular,title_talents, "Trending", null),

                ],
              ),
            ),
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
  ];

  List<String> title_popular = [
    "Apollo",
    "Gucci Gang",
    "Apollo",
        "Apollo",
    "Gucci Gang",
    "Apollo"
  ];
}
