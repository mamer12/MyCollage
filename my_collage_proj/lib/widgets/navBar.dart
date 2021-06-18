import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:my_collage_proj/View/provinces.dart';
import 'package:my_collage_proj/View/search.dart';
import 'homeview.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  final pages = [HomePage(), DropDown(), SearchPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: SnakeNavigationBar.color(
          elevation: 20,
          snakeViewColor: Color(0xFF185a9d),
          selectedItemColor: Color(0xFF43cea2),
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          behaviour: SnakeBarBehaviour.pinned,
          snakeShape: SnakeShape.indicator,
          currentIndex: index,
          onTap: (value) => setState(() => index = value),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: 'Provinces',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
