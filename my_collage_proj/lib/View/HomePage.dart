import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    return NavBar();
  }
}
