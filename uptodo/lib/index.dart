// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'calender.dart';
import 'focus.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 19, 19, 21),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(
          //       Icons.menu), // Replace with the desired icon (e.g., Icons.menu)
          //   onPressed: () {
          //     Scaffold.of(context)
          //         .openDrawer(); // Add your functionality for the main menu button here
          //   },
          //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          // ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo-removebg (1).png'),
                radius: 20,
              ),
            )
          ],
          title: Text(
            "Index",
            style: TextStyle(
                fontFamily: 'Lato', // Replace with your desired font family
                fontSize: 20, // Replace with your desired font size
                fontWeight:
                    FontWeight.w400, // Replace with your desired font weight
                color: Color.fromARGB(
                    222, 255, 255, 255) // Replace with your desired text color
                ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 19, 19, 21),
        ),
        // drawer: MyDrawer(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(74, 174, 74, 1),
                width: 227, // Adjust to your desired width
                height: 227, // Adjust to your desired height
                child: Image.asset('assets/images/logo-removebg (1).png'),
                // Center the image within the container
              ),
            ),
            // SizedBox(
            //   height: 4,
            // ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(53, 1, 53, 371),
                child: Column(children: [
                  //  margin: EdgeInsets.only(bottom: height * 0.2),
                  Text(
                    "What do you want to do today?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(222, 255, 255, 255),
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tap + to add your tasks",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(222, 255, 255, 255),
                      fontFamily: 'Lato',
                    ),
                  )
                ]))
          ]),
        ));
  }
}

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.white70,
//       // child: Container(
//       //   // alignment: Alignment.center,
//       //   // color: Color.fromARGB(0, 255, 255, 255),

//       //   ),
//       child: ListView(
//         children: <Widget>[
//           UserAccountsDrawerHeader(
//             accountName: Text('Namrata Yadav'),
//             accountEmail: Text('namratanyyadav@gmail.com'),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/pic2.jpg'),
//             ),
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 35, 79, 63),
//             ),
//             // Change the color of the header background
//           ),
//           ListTile(
//             leading: Icon(Icons.receipt),
//             title: Text('Resume'),
//             onTap: () {
//               Navigator.pushNamed(context, 'resume');
//               Navigator.of(context).popUntil((route) => route.isFirst);
//               Navigator.of(context).pop();
//               // Navigator.of(context).pushNamed('resume');
//             },
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.exit_to_app,
//               color: Colors.red,
//             ),
//             title: Text(
//               'Exit',
//               style: TextStyle(color: Colors.red),
//             ),
//             onTap: () {
//               SystemNavigator.pop();
//               // Handle the Log Out menu item
//             },
//           ),
//         ],
//       ),
//       // ),
//     );
//   }
// }