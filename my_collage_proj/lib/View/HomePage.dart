import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/widgets.dart';
import 'package:my_collage_proj/app_Data.dart';
import 'package:my_collage_proj/widgets/homePageitem.dart';

// ignore: must_be_immutable
class WelcomeUserWidget extends StatefulWidget {
  GoogleSignIn _googleSignIn;
  User _user;
  WelcomeUserWidget(User user, GoogleSignIn signIn) {
    _user = user;
    _googleSignIn = signIn;
  }

  @override
  _WelcomeUserWidgetState createState() => _WelcomeUserWidgetState();
}

class _WelcomeUserWidgetState extends State<WelcomeUserWidget> {
  bool isUserSignedIn = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return new Future(() => false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('اهلا بك'),
            backgroundColor: Color(0xFF17223b),
            elevation: 0,
            centerTitle: false,
            titleSpacing: 0,
          ),
          drawer: Drawer(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              DrawerHeader(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      widget._user.photoURL,
                      fit: BoxFit.cover,
                    )),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              TextButton(
                  onPressed: () {
                    widget._googleSignIn.signOut();
                    Navigator.popUntil(context, (route) {
                      return count++ == 2;
                    });
                  },
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 45,
              ),
              Material(
                borderRadius: BorderRadius.circular(500),
                child: InkWell(
                  borderRadius: BorderRadius.circular(500),
                  splashColor: Colors.black45,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
              )),
            ],
          )),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 7.5 / 8,
                    crossAxisSpacing: 10,
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 10),
                children: page_Data
                    .map(
                        (homeData) => DataName(homeData.title, homeData.imgUrl))
                    .toList()),
          ),
        ));
  }
}
