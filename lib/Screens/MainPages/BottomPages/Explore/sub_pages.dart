import 'package:apptide/Styles/colors.dart';
import 'package:flutter/material.dart';

///Row Container for Items
// Widget ViewContainer(String? title,
//     {String? uid, CollectionReference? firebaseFirestore}) {
//
// }

class ViewContainer extends StatefulWidget {
  ///Constructor
  ViewContainer(this.images, this.musicTitle, this.title, this.onTap,
      {Key? key})
      : super(key: key);

  final String? title;
  List<String> images;
  List<String> musicTitle;

  Function(int?)? onTap;

  @override
  _ViewContainerState createState() => _ViewContainerState();
}

class _ViewContainerState extends State<ViewContainer> {
  ///Scroll controller
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "See all",
                            style: TextStyle(color: primaryColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/arrow.png",
                            color: primaryColor,
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    ...List<Widget>.generate(widget.images.length, (int index) {
                      return GestureDetector(
                        onTap: () => widget.onTap!(index),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              ///Thumbnail
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  widget.images[index],
                                  fit: BoxFit.cover,
                                ),
                                height: 143,
                                // width: 113,
                              ),

                              Positioned(
                                bottom: 15,
                                // left: 20,
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                      color: white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ///text
                                      Text(widget.musicTitle[index]),

                                      ///icon
                                      Icon(
                                        Icons.play_circle_filled_outlined,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                  constraints: BoxConstraints(minWidth: 80),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ]),
                ),

                ///Arrow Indicator
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _scrollController.animateTo(
                            _scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease);
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: white,
                      size: 14,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
