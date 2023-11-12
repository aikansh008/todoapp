
import 'package:flutter/material.dart';
import 'package:uptodo/loginscreen2.dart';
import 'package:uptodo/registerscreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(

        children: [
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
            child: Center(
              child: Text("Welcome to UpTodo", textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 30,
                  ),),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(  MediaQuery.of(context).size.width / 20,   ),
            
            child: Text(
                "Please login to your account or create new account to continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ),
          Padding(
            padding:  EdgeInsets.only(top :MediaQuery.of(context).size.height / 2.5),
            child: Container(
              height:60,
              width:350,
            
              child: ElevatedButton(
                child: Text('LOGIN',style: TextStyle(
                  fontSize: 20,
                ),),
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>SigninPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color.fromRGBO(136, 117, 255, 1), 
              ),
            ),
          )
          ),
          Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width / 30)),
             Container(
              height: 60,
              width: 350,
              child: OutlinedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>SignupPage()));
              }, child: Text("CREATE ACCOUNT",style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 254, 254),
              ),),
            style:TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
              
                ),
                
              )
              ),
            ),
          
        ],
      ),
    );
  }
}
