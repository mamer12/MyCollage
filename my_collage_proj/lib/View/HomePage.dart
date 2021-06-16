import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/widgets.dart';
import 'package:my_collage_proj/app_Data.dart';
import 'package:my_collage_proj/widgets/homePageitem.dart';
import 'package:my_collage_proj/widgets/navBar.dart';

import '../SignIn.dart';

// ignore: must_be_immutable
class WelcomeUserWidget extends StatefulWidget {
  GoogleSignIn _googleSignIn;
  User _user;
  WelcomeUserWidget({User user, GoogleSignIn signIn}) {
    _user = user;
    _googleSignIn = signIn;
  }

  @override
  _WelcomeUserWidgetState createState() => _WelcomeUserWidgetState();
}

class _WelcomeUserWidgetState extends State<WelcomeUserWidget> {
  bool isUserSignedIn = false;
  int count = 0;

  final List<String> imageList = [
    "https://img.freepik.com/free-vector/university-college-building-education-student-flat-campus-design-graduation-university_1284-41481.jpg?size=626&ext=jpg",
    "https://img.freepik.com/free-vector/university-college-building-education-student-flat-campus-design-graduation-university_1284-41481.jpg?size=626&ext=jpg",
    "https://img.freepik.com/free-vector/university-college-building-education-student-flat-campus-design-graduation-university_1284-41481.jpg?size=626&ext=jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('الصفحة الرئيسية'),
          backgroundColor: Color(0xFF17223b),
          elevation: 0,
          centerTitle: true,
          titleSpacing: 0,
          actions: [
            Container(
                alignment: Alignment.topLeft,
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ))),
          ],
        ),
        bottomNavigationBar: BottomNavBarV2(),
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
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
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
        ),
      ),
    );
  }
}
