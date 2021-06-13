import 'package:flutter/material.dart';
import 'package:my_collage_proj/app_Data.dart';

class Unidetal extends StatelessWidget {
  static const uniDetalRoute = '/uni-detal';
  @override
  Widget build(BuildContext context) {
    final uniId = ModalRoute.of(context).settings.arguments as String;
    final selectdeUni =
        Universty_data.firstWhere((universty) => universty.id == uniId);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(
              icon: new Icon(Icons.arrow_back),
              iconSize: 50,
              color: Colors.black,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SizedBox.expand(
            child: Image.network(
              selectdeUni.image,
              fit: BoxFit.contain,
            ),
          ),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            initialChildSize: 0.22,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //for user profile header
                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32, top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipOval(
                                  child: Image.network(
                                    '${selectdeUni.deanImage}',
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${selectdeUni.title}',
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 36,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    selectdeUni.deanName,
                                    style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //performace bar

                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(32),
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.check_box,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "234",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Roboto",
                                          fontSize: 24),
                                    )
                                  ],
                                ),
                                Text(
                                  "Jobs Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "400",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Roboto",
                                          fontSize: 24),
                                    )
                                  ],
                                ),
                                Text(
                                  "Jobs Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Roboto",
                                          fontSize: 24),
                                    )
                                  ],
                                ),
                                Text(
                                  "Ratings",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      //container for about me

                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "عن الكلية",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Roboto",
                                    fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${selectdeUni.description}',
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),
                      //Container for clients

                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "التدريسيين",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),

                            SizedBox(
                              height: 8,
                            ),
                            //for list of clients
                            Container(
                              width: MediaQuery.of(context).size.width - 64,
                              height: 80,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(right: 8),
                                    child: ClipOval(
                                      child: Image.network(
                                        selectdeUni.teachersImage[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                                itemCount: selectdeUni.teachersImage.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      //Container for reviews

                      Container(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Reviews",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 64,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Client $index",
                                              style: TextStyle(
                                                  color: Colors.lightBlue,
                                                  fontSize: 18,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w700)),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orangeAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orangeAccent,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                          "He is very fast and good at his work",
                                          style: TextStyle(
                                              color: Colors.grey[800],
                                              fontSize: 14,
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.w400)),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  );
                                },
                                itemCount: 8,
                                shrinkWrap: true,
                                controller:
                                    ScrollController(keepScrollOffset: false),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
