// ignore_for_file: must_call_super, unused_local_variable

import 'package:aidnix/singup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => signup())));
//     Navigator.push(
// context,
//       MaterialPageRoute(builder: (context) => signup()),
//     );
    print("initState Called");
  }

  @override
  Widget build(BuildContext context) {
    // final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 900,
          child: Image.asset('assets/images/aid_bg.png',
              fit: BoxFit.cover,
              color: Color(0xff42D9A0).withOpacity(0.5),
              colorBlendMode: BlendMode.darken),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 120,
            ),
            child: Container(
              alignment: Alignment.topCenter,
              height: 200,
              child: Image.asset(
                'assets/images/aid_midicon.png',
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 180),
          child: Center(
            child: Text(
              'Welcome To AidNix!',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 560,
          ),
          child: Container(
            margin: EdgeInsets.only(left: 40),
            child: const Text(
              'Access comprehensive medical tests and \n'
              'results right from your phone.',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
          ),
        ),
      ]),
    );
  }
}
