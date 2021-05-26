import 'package:flutter/material.dart';

class DataName extends StatelessWidget {
  final String title;
  final String imgUrl;
  DataName(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(title),
              ),
              Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                  )),
            ],
          ),
        ));
  }
}
