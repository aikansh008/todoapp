/*import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:uptodo/mainscreen.dart';
import 'package:uptodo/registerscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailtext = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 10,
              ),
              _header(context),
              const SizedBox(
                height: 10,
              ),
              _inputField(context),
              const SizedBox(
                height: 10,
              ),
              // _forgotPassword(context),
              const Text(
                "___________________________or_____________________________",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              outlinebuttn(context),

              const SizedBox(
                height: 1,
              ),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Positioned(child: ),
        SafeArea(
          child: Text(
            "LOGIN",
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            "Username",
            style: TextStyle(color: Colors.white),
          ),
        ),
        // Padding(padding: EdgeInsets.all(19)),
        Container(
          margin: const EdgeInsets.all(15),
          child: TextField(
            keyboardType: TextInputType.name,
            controller: emailtext,
            // enabled: false,

            style: const TextStyle(color: Colors.white),

            decoration: InputDecoration(
              hintText: "Enter Your Username",
              hintStyle: const TextStyle(color: Colors.grey),
              // fillColor: Color.fromRGBO(151, 151, 151, 1),
              // filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white))
              // disabledBorder: OutlineInputBorder()
              ,
              // suffixText: "hbchjdbch",

              // suffixStyle: TextStyle(color: Colors.indigo)
            ),
          ),
        ),
        // const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Text(
            "Password",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: TextField(
            controller: password,
            obscureText: true,
            // enabled: false,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "PASSWORD",
                hintStyle: const TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white))
                // disabledBorder: OutlineInputBorder()
                ,
                // suffixText: "hbchjdbch",

                suffixStyle: const TextStyle(color: Colors.indigo)),
          ),
        ),
        // const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.all(15),
          child: ElevatedButton(
            onPressed: () {
              String uname = emailtext.text.toString();
              String passwrd = password.text.toString();
              // print(uname);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) =>Main_Screen()));
            },
            style: ElevatedButton.styleFrom(
              // shape: const StadiumBorder(),
              shape: const ContinuousRectangleBorder(),
              backgroundColor: const Color.fromRGBO(134, 135, 231, 0.5),

              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  // _forgotPassword(context) {
  //   return TextButton(
  //       onPressed: () {},
  //       child: const Text(
  //         "Forgot password?",
  //         style: TextStyle(color: Colors.red),
  //       ));
  // }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account?",
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: const Text("Register"))
      ],
    );
  }

  outlinebuttn(context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(19), // Adjust margin as needed
          // padding: EdgeInsets.all(10),
          // padding: EdgeInsets.all(90),
          width: 400, height: 70,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                // side: BorderSide(color: Colors.blue)
              )),
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Colors.blue),
              ),
            ),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Continue With Google",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(19), // Adjust margin as needed
          // padding: EdgeInsets.all(10),
          // padding: EdgeInsets.all(90),
          width: 400, height: 70,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                // side: BorderSide(color: Colors.blue)
              )),
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Colors.blue),
              ),
            ),
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Icon(
                  FontAwesomeIcons.appStoreIos,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Continue With Apple",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
*/