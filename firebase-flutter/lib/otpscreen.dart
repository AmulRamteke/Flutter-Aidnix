// ignore_for_file: unused_local_variable, use_key_in_widget_constructors

import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:first_firebase/homepage.dart';
import 'package:flutter/material.dart';

class otpscreen extends StatefulWidget {
  String verificationId;
  // String verificationid;
  otpscreen({super.key, required this.verificationId});

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  TextEditingController phonenumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Otp')),
      body: Column(
        children: [
          const Center(
            child: Text(
              'enter otp',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              // controller: phonenumController,

              decoration: InputDecoration(
                hintText: 'Enter OTP number',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
              onTap: () async {
                try {
                  print('Success Success Success');
                  PhoneAuthCredential credential =
                      await PhoneAuthProvider.credential(
                          verificationId: widget.verificationId,
                          smsCode: phonenumController.text.toString());
                  FirebaseAuth.instance
                      .signInWithCredential(credential)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  });
                } catch (ex) {
                  print('ooppss Error Occured');
                  print("ex");
                }
              },
              child: Text('enter'))
        ],
      ),
    );
  }
}
