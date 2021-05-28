import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataName extends StatelessWidget {
  final String title;
  final String imgUrl;
  DataName(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Container(
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            imgUrl,
            width: 42,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            title,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
