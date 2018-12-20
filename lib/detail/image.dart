import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  _ImageState createState() => _ImageState();
}

class _ImageState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        image:
            "https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true",
        placeholder: "images/placeholder.png",
      ),
    );
  }
}
