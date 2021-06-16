import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class SnakeNav extends StatefulWidget {
  @override
  _SnakeNavState createState() => _SnakeNavState();
}

class _SnakeNavState extends State<SnakeNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar();
  }

  // ignore: non_constant_identifier_names
  // Widget SnankeBar() {
  //   return PageView(
  //         onPageChanged: _onPageChanged,
  //         children: <Widget>[
  //           PagerPageWidget(
  //             text: 'This is our beloved SnakeBar.',
  //             description: 'Swipe right to see different styles',
  //             image: Image.asset('images/flutter1.png'),
  //           ),
  //           PagerPageWidget(
  //             text: 'It comes in all shapes and sizes...',
  //             description:
  //                 'Change indicator and bottom bar shape at your will.',
  //             image: Image.asset('images/flutter2.png'),
  //           ),
  //           PagerPageWidget(
  //             text: '...not only the ones you see here',
  //             description:
  //                 'Combine different shapes for unique and personalized style!.',
  //             image: Image.asset('images/flutter3.png'),
  //           ),
  //           PagerPageWidget(
  //             text: 'And it\'s all open source!',
  //             description:
  //                 'Get the Flutter library on github.com/herodotdigital',
  //             image: Image.asset('images/flutter4.png'),
  //           ),
  //         ],
  //       ),
  //     ),
  //     bottomNavigationBar: SnakeNavigationBar.color(
  //       // height: 80,
  //       behaviour: snakeBarStyle,
  //       snakeShape: snakeShape,
  //       shape: bottomBarShape,
  //       padding: padding,

  //       ///configuration for SnakeNavigationBar.color
  //       snakeViewColor: selectedColor,
  //       selectedItemColor:
  //           snakeShape == SnakeShape.indicator ? selectedColor : null,
  //       unselectedItemColor: Colors.blueGrey,

  //       ///configuration for SnakeNavigationBar.gradient
  //       // snakeViewGradient: selectedGradient,
  //       // selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
  //       // unselectedItemGradient: unselectedGradient,

  //       showUnselectedLabels: showUnselectedLabels,
  //       showSelectedLabels: showSelectedLabels,

  //       currentIndex: _selectedItemPosition,
  //       onTap: (index) => setState(() => _selectedItemPosition = index),
  //       items: [
  //         const BottomNavigationBarItem(
  //             icon: Icon(Icons.notifications), label: 'tickets'),
  //         const BottomNavigationBarItem(
  //             icon: Icon(CustomIcons.calendar), label: 'calendar'),
  //         const BottomNavigationBarItem(
  //             icon: Icon(CustomIcons.home), label: 'home'),
  //         const BottomNavigationBarItem(
  //             icon: Icon(CustomIcons.podcasts), label: 'microphone'),
  //         const BottomNavigationBarItem(
  //             icon: Icon(CustomIcons.search), label: 'search')
  //       ],
  //       selectedLabelStyle: const TextStyle(fontSize: 14),
  //       unselectedLabelStyle: const TextStyle(fontSize: 10),
  //     ),
  //   );
  // }
}
