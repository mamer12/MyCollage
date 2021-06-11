import 'package:flutter/material.dart';
import 'package:my_collage_proj/welcomePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'View/universtiesScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', ''), // English, no country code
      ],
      title: 'MyCollage',
      theme: ThemeData(
          primaryColor: Color(0xFF263859),
          fontFamily: 'Tajawal',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.normal),
              headline6: TextStyle(
                  color: Colors.red,
                  fontSize: 26,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.normal))),
      routes: {
        '/': (ctx) => WelcomePage(),
        UniverstiesPage.uniPage: (ctx) => UniverstiesPage()
      },
    );
  }
}
