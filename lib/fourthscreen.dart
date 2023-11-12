import 'package:flutter/material.dart';
import 'package:uptodo/fifthscreen.dart';
class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 2.6),
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 115, 113, 113),
                      fontSize: 15,
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
            child: Image.asset("assets/images/Frame 161.png"),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 10,
                bottom: MediaQuery.of(context).size.width / 10),
            child: Text(
              "Orgonaize your tasks",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width / 3,
              left: MediaQuery.of(context).size.width / 20,
              right: MediaQuery.of(context).size.width / 20,
            ),
            child: Text(
              "You can organize your daily tasks by adding your tasks into separate categories",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      child: Text(
                        "BACK",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 115, 113, 113),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 3),
                  child: Container(
                    height: 40,
                    width: 130,
                    color: Color.fromRGBO(136, 117, 255, 1),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      },
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                          backgroundColor: Color.fromRGBO(136, 117, 255, 1),
                          color: Color.fromARGB(255, 255, 254, 254),
                          fontSize: 15,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//