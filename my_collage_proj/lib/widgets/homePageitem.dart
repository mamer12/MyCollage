import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DataName extends StatelessWidget {
  final String title;
  final String imgUrl;
  DataName(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(imgUrl),
        Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(
            title,
          ),
        )
      ],
    );
  }
}
