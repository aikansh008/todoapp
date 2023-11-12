import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  TextEditingController _textEditingController = TextEditingController();
  String _userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 19, 21),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 19, 19, 21),
        leading: Container(
          width: 60,
          height: 60,
          child: Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 29, 29, 29),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 60,
                height: 60,
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 29, 29, 29),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.repeat),
                      onPressed: reset,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading:
                Icon(Icons.home, color: Color.fromARGB(222, 255, 255, 255)),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color.fromARGB(222, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato',
              ),
            ),
            subtitle: Text("gghgR",
                style: TextStyle(
                  color: Color.fromARGB(255, 175, 175, 175),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                )),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.work,
                    color: Color.fromARGB(222, 255, 255, 255))),
          ),
          ListTile(
            leading:
                Icon(Icons.home, color: Color.fromARGB(222, 255, 255, 255)),
            title: Text('Task Time:',
                style: TextStyle(
                  color: Color.fromARGB(222, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                )),
            trailing: ElevatedButton(
              onPressed: () {
                _showInputPopup(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(53, 255, 255, 255))),
              child: Text('Button 1',
                  style: TextStyle(color: Color.fromARGB(222, 255, 255, 255))),
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.home, color: Color.fromARGB(222, 255, 255, 255)),
            title: Text('Task Category:',
                style: TextStyle(
                  color: Color.fromARGB(222, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                )),
            trailing: ElevatedButton(
              onPressed: () {
                // Handle button press for Item 1
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(53, 255, 255, 255))),
              child: Text('Button 1',
                  style: TextStyle(color: Color.fromARGB(222, 255, 255, 255))),
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.home, color: Color.fromARGB(222, 255, 255, 255)),
            title: Text('Task Priority:',
                style: TextStyle(
                  color: Color.fromARGB(222, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                )),
            trailing: ElevatedButton(
              onPressed: () {
                // Handle button press for Item 1
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(53, 255, 255, 255))),
              child: Text('Button 1',
                  style: TextStyle(color: Color.fromARGB(222, 255, 255, 255))),
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.home, color: Color.fromARGB(222, 255, 255, 255)),
            title: Text('Sub- Task',
                style: TextStyle(
                  color: Color.fromARGB(222, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                )),
            trailing: ElevatedButton(
              onPressed: () {
                // Handle button press for Item 1
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(53, 255, 255, 255))),
              child: Text('Button dfghjknbvcfdsretyuhjb1',
                  style: TextStyle(color: Color.fromARGB(222, 255, 255, 255))),
            ),
          ),
          ListTile(
              leading:
                  Icon(Icons.home, color: Color.fromARGB(255, 255, 73, 73)),
              title: Text(
                'Delete Task',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 73, 73),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 134, 135, 231),
                ),
              ),
              child: Text('Elevated Button',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            ),
          ),
        ],
      ),
    );
  }

  void reset() {}

  void _showInputPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Input'),
          content: TextField(
            controller: _textEditingController,
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  _userInput = _textEditingController.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
