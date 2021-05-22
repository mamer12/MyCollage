import 'package:flutter/material.dart';

class DataName extends StatelessWidget {
  final String title;
  final String imgUrl;
  DataName(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          child: Image.network(
            imgUrl,
            fit: BoxFit.fill,
          ),
        ),
        Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
