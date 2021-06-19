import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:my_collage_proj/app_Data.dart';

import '../SignIn.dart';
import 'homePageitem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "https://mamonrasool.com/project/res/logo.png",
    "https://i.pinimg.com/originals/67/b8/1f/67b81fa55167af70307b96cd19fe0816.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSZGv5sJ8rsWWG1JZGlorxK-fqI5U6wWTdVw&usqp=CAU",
    "http://uoalfarahidi.edu.iq/wp-content/uploads/2020/09/logo-with-text.png",
    "https://scontent.fnjf7-2.fna.fbcdn.net/v/t1.6435-9/p960x960/125929289_2549832845315306_2606382674225247550_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=e3f864&_nc_ohc=ijkLJWcHwTwAX8nVrSu&_nc_ht=scontent.fnjf7-2.fna&tp=6&oh=8e1b316bf6125c1629c68fe16b2c153b&oe=60D2C521",
    "https://scontent.fnjf7-2.fna.fbcdn.net/v/t1.6435-0/p600x600/130992446_1825021284322328_4621911683514703742_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=e3f864&_nc_ohc=evjDcB2D3UsAX_RRgGv&_nc_ht=scontent.fnjf7-2.fna&tp=6&oh=34c9671dff352b9db9fa358449c55d6c&oe=60D21575"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logoBlack.png',
            fit: BoxFit.cover,
            height: 100,
          ),
          backgroundColor: Colors.white,
          elevation: 22,
          centerTitle: true,
          titleSpacing: 0,
          // actions: [
          //   // Container(
          //   //     color: Colors.black,
          //   //     alignment: Alignment.topLeft,
          //   //     child: FlatButton(
          //   //         onPressed: () {
          //   //           Navigator.push(
          //   //               context,
          //   //               MaterialPageRoute(
          //   //                   builder: (context) => LoginScreen()));
          //   //         },
          //   //         child: Icon(
          //   //           Icons.logout,
          //   //           color: Colors.white,
          //   //         ))),
          // ],
        ),
        body: Stack(
          children: [
            GFCarousel(
              activeIndicator: Colors.white,
              autoPlay: true,
              pagerSize: 10,
              pagination: true,
              height: 200,
              enableInfiniteScroll: true,
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child:
                          Image.network(url, fit: BoxFit.fill, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 210.0, right: 20),
                child: Text(
                  'التصنيفات',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                    fontSize: 22.0,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 10, right: 10),
              child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 5 / 3,
                      crossAxisSpacing: 10,
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 10),
                  children: page_Data
                      .map((homeData) => DataName(
                          homeData.title, homeData.imgUrl, homeData.id))
                      .toList()),
            )
          ],
        ));
  }
}
