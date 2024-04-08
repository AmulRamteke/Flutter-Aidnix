import 'package:aidnix/home_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class otpscreen extends StatefulWidget {
  const otpscreen({Key? key});

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  //  controller = TextEditingController();
  //    contrller2 = TextEditingController();
  //    contrller3 = TextEditingController();
  //  contrller4 = TextEditingController();
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
                Text(
                  'Lorem ipsum dolor sit',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ex voluptas ratione et quas esse ut aperiam quaerat. Sit velit similique qui laudantium recusandae',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 100),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Enter Your OTP',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'We are automatically detecting a SMS send to \n your mobile Number +91 123 456 789',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(left: 20),
                            child: PinCodeTextField(
                              maxLength: 4,
                              pinBoxHeight: 70,
                              pinBoxColor: Colors.white,
                              pinBoxRadius: 0,
                            ),
                          )
                        ],
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
                                  builder: (context) => homepage()),
                            );
                          },
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '    Don’t recieve OPT?  ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Resend OTP',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.greenAccent),
                            ),
                          ),
                        ],
                      )
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
