import 'package:aidnix/OTPscreen.dart';
import 'package:flutter/material.dart';

class mynum extends StatefulWidget {
  const mynum({Key? key});

  @override
  State<mynum> createState() => _mynumState();
}

class _mynumState extends State<mynum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/aid_bg.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color(0xff31C48D).withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 35),
                  height: 300,
                  child: Image.asset(
                    'assets/images/aid_doctor.png',
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  'Lorem ipsum dolor sit',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                const Text(
                  'Ex voluptas ratione et quas esse ut aperiam quaerat. Sit velit similique qui laudantium recusandae',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 108),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Enter Your Phone Number',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      const Text(
                        'We’ll send you a Verification code to know \n you’re real',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixText: '+91 ',
                          prefixStyle: TextStyle(color: Colors.black),
                          labelText: 'Enter Your Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              elevation: 3,
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))

                              //           shape: RoundedRectangleBorder(
                              // borderRaius: BorderRadius.circular(30),
                              ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => otpscreen()),
                            );
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
