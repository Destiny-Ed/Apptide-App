import 'package:flutter/material.dart';


class VideoUpload extends StatefulWidget {
  const VideoUpload({Key? key}) : super(key: key);

  @override
  _VideoUploadState createState() => _VideoUploadState();
}

class _VideoUploadState extends State<VideoUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Video Upload"),
      ),
    );
  }
}