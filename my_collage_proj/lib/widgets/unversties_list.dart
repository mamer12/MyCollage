import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_collage_proj/View/unidetal.dart';

class UniList extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String provinces;
  final String yearPub;
  final int rating;

  const UniList(
      {@required this.title,
      @required this.image,
      @required this.rating,
      @required this.provinces,
      @required this.yearPub,
      @required this.id});

  void selectUin(BuildContext context) {
    Navigator.of(context).pushNamed(Unidetal.uniDetalRoute, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectUin(context),
      child: Container(
        height: 330,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                      fit: BoxFit.contain,
                      height: 200,
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    height: 250,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8)
                          ],
                          stops: [
                            0.6,
                            1
                          ]),
                    ),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline5,
                      overflow: TextOverflow.fade,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$rating')
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(provinces)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(yearPub)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
