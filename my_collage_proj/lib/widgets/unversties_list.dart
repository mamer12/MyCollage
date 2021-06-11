import 'package:flutter/cupertino.dart';
import 'package:my_collage_proj/models/universties.dart';
import 'package:flutter/material.dart';

class UniList extends StatelessWidget {
  final String title;
  final String image;
  final int rating;

  const UniList(
      {@required this.title, @required this.image, @required this.rating});

  void selectUin() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectUin,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 6,
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
