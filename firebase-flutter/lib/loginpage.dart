import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:first_firebase/otpscreen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Phoneauth extends StatefulWidget {
  const Phoneauth({super.key});

  @override
  State<Phoneauth> createState() => _PhoneauthState();
}

// ignore: camel_case_types
class _PhoneauthState extends State<Phoneauth> {
  TextEditingController phonenumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text('Welcome'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Enter Phone Number',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: phonenumController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter phone number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException ex) {},
                      codeSent:
                          (String verificationId, int? forceResendingToken) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => otpscreen(
                                      verificationId: verificationId,
                                    )));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                      phoneNumber: phonenumController.text.toString());
                },
                child: Text('verify'),
              ),
            ],
          ),
        ));
  }
}
