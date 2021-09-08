import 'package:apptide/Screens/MainPages/Upload/steps/step_one.dart';
import 'package:flutter/material.dart';

class MusicUpload extends StatefulWidget {
  const MusicUpload({Key? key}) : super(key: key);

  @override
  _MusicUploadState createState() => _MusicUploadState();
}

class _MusicUploadState extends State<MusicUpload> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: StepOne(),
          )
        ],
      ),
    );
  }
}
