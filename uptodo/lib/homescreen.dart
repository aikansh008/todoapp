import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uptodo/addtodo.dart';
import 'package:uptodo/fifthscreen.dart';
import 'package:uptodo/secondscreen.dart';
import 'package:uptodo/todocard.dart';
import 'package:uptodo/viewdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  AuthClass authClass = AuthClass();

  final Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection("upTodo").snapshots();
  List<Select> Selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Today's Schedule",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/ABC.png"),
          ),
          SizedBox(
            width: 25,
          ),
          Container(
              child: IconButton(
                  onPressed: () {
                    _auth.signOut();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
                  },
                  icon: Icon(CupertinoIcons.hand_point_right,
                      color: Colors.white, size: 28))),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  DateFormat.yMMMEd().format(DateTime.now()),
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
        ),
      ),
      body: StreamBuilder(
          stream: _stream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  IconData iconData;
                  Color iconColor;
                  Map<String, dynamic> document =
                      snapshot.data?.docs[index].data() as Map<String, dynamic>;
                  switch (document["category"]) {
                    case "Work":
                      iconData = Icons.run_circle_outlined;
                      iconColor = Colors.white;
                      break;
                    case "Work Out":
                      iconData = Icons.alarm;
                      iconColor = Colors.teal;
                      break;
                    case "Food":
                      iconData = Icons.local_grocery_store;
                      iconColor = const Color.fromARGB(255, 9, 80, 139);
                      break;
                    case "Design":
                      iconData = Icons.audiotrack;
                      iconColor = Color.fromARGB(255, 11, 191, 38);
                      break;
                    default:
                      iconData = Icons.run_circle_outlined;
                      iconColor = Color.fromARGB(255, 207, 30, 18);
                      break;
                  }
                  Selected.add(Select(
                      id: snapshot.data!.docs[index].id, CheckValue: false));
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Builder) => ViewData(
                                  document: document,
                                  id: snapshot.data!.docs[index].id)));
                    },
                    child: TodoCard(
                      title: document["title"] == null
                          ? "Hey There"
                          : document["title"],
                      check: Selected[index].CheckValue,
                      iconData: iconData,
                      iconColor: iconColor,
                      iconBgColor: const Color.fromARGB(255, 255, 255, 255),
                     time:"",
                      index: index,
                      onchange: onchange,
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AddTodo()));
        },
        backgroundColor: Color.fromRGBO(136, 117, 255, 1),
        child: Icon(Icons.add),
      ),
    );
  }

  void onchange(int index) {
    setState(() {
      Selected[index].CheckValue = !Selected[index].CheckValue;
    });
  }
}

class AuthClass {}

class Select {
  late String id;
  bool CheckValue = false;
  Select({required this.id, required this.CheckValue});
}
