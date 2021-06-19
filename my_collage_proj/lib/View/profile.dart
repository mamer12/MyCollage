import 'package:flutter/material.dart';

import '../SignIn.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 230,
        ),
        Container(
          child: ClipOval(
            child: Image.asset(
              'assets/images/photo_2021-06-19_03-41-56.jpg',
              fit: BoxFit.fill,
              height: 200,
              width: 200,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Mustafa Amer',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: RaisedButton(
                color: Colors.red.withOpacity(0.9),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                    child: Text(
                  'تسجيل خروج',
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        )
      ],
    ));
  }
}
