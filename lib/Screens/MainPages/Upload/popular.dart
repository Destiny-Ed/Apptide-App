import 'package:flutter/material.dart';


class ProductUpload extends StatefulWidget {
  const ProductUpload({Key? key}) : super(key: key);

  @override
  _ProductUploadState createState() => _ProductUploadState();
}

class _ProductUploadState extends State<ProductUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Products"),
      ),
    );
  }
}