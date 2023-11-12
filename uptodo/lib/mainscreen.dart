import 'package:flutter/material.dart';
import 'calender.dart';
import 'focus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'index.dart';
import 'profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _index = 0;
  final screens = [Index(), Calendar(), InFocus(), Profile()];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(FontAwesomeIcons.houseChimneyWindow, size: 25),
      Icon(FontAwesomeIcons.calendarDays, size: 25),
      SizedBox(
        width: 20,
      ),
      Icon(FontAwesomeIcons.solidClock, size: 25),
      Icon(FontAwesomeIcons.userLarge, size: 25),
    ];
    final height = MediaQuery.of(context).size.height;
    if (_index < 0) {
      _index = 0;
    } else if (_index >= screens.length) {
      _index = screens.length - 1;
    }
    return Container(
        color: Color.fromARGB(255, 54, 54, 54),
        child: SafeArea(
            top: false,
            child: ClipRect(
                child: Scaffold(
                    backgroundColor: Color.fromARGB(255, 19, 19, 21),
                    extendBody: true,
                    extendBodyBehindAppBar: true,
                    body: screens[_index],
                    floatingActionButton:
                        //  Padding(
                        //   padding: const EdgeInsets.symmetric(
                        //     vertical: 20,
                        //   ),// Adjust the bottom padding as needed
                        Container(
                      height: 65,
                      width: 65,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Task()));
                        },
                        backgroundColor: Color.fromARGB(255, 134, 135, 231),
                        child: Icon(
                          Icons.add,
                          size: 35,
                        ),
                      ),
                    ),
                    floatingActionButtonLocation: FloatingActionButtonLocation
                        .centerDocked, // Adjust the location as needed
                    bottomNavigationBar: Theme(
                        data: Theme.of(context).copyWith(
                            iconTheme: IconThemeData(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        child: CurvedNavigationBar(
                          key: navigationKey,
                          color: Color.fromARGB(255, 54, 54, 54),
                          buttonBackgroundColor:
                              Color.fromARGB(255, 19, 19, 21),
                          backgroundColor: Colors.transparent,
                          items: items,
                          animationCurve: Curves.easeInOut,
                          animationDuration: Duration(milliseconds: 300),
                          height: 60,
                          //             items: items.asMap().entries.map((e) => BottomNavigationBarItem(
                          //         icon: e.value,
                          //         label: '',
                          //       ),
                          //     )
                          //     .toList(),
                          // currentIndex: _index,
                          // onTap: (value) {
                          //   setState(() {
                          //     _index = value;
                          index: _index,
                          onTap: (value) {
                            setState(() {
                              _index = value;
                            });
                          },
                        ))))));
  }
}
