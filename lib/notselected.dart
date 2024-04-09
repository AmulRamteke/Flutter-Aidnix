import 'package:aidnix/mynum.dart';
import 'package:aidnix/mynum1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

bool valuefirst = false;

class notselect extends StatefulWidget {
  const notselect({super.key});

  @override
  State<notselect> createState() => _LoginState();
}

class _LoginState extends State<notselect> {
  bool selected = false;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: 932,
        child: Image.asset('assets/images/aid_bg.png',
            fit: BoxFit.cover,
            color: Color(0xff31C48D).withOpacity(0.5),
            colorBlendMode: BlendMode.darken),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 400,
          ),
          child: Container(
            alignment: Alignment.topCenter,
            height: 320,
            child: Image.asset(
              'assets/images/aid_doctor.png',
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 55),
        child: Center(
          child: Text(
            'Lorem ipsum dolor sit',
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 420,
        ),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Ex voluptas ratione et quas esse ut aperiam quaerat. Sit velit similique qui laudantium recusandae',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                dotColor: Color(0xFFE9F6FC),
              ),
            ),
          )),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 600),
        child: Center(
          child: Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 350,
                  width: 480,
                  color: Colors.white,
                )),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 390, left: 90),
          child: Row(children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Welcome to ',
                      // style: Theme.of(context).textTheme.headline4,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      )),
                  TextSpan(
                    text: 'AidNix',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 30),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
      SizedBox(
        height: 25,
      ),
      Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 700),
                alignment: Alignment.center,
                // height: 20,
                // width: double.infinity,
                margin: EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mynum()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff31C48D),
                      onPrimary: Colors.white,
                      elevation: 2,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Text(
                    'Sign In Using OTP',
                    style: TextStyle(fontSize: 25),
                  ),
                )),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(children: [
        Container(
          padding: EdgeInsets.only(top: 780),
          child: Checkbox(
            value: selected,
            onChanged: (value) {
              setState(() {
                selected = value!;
              });
            },
            activeColor: Colors.green,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 800),
          child: Text(
            'I agree to the Terms & Conditions, Privacy Policy \n'
            'and Consent for accessing the credit report.',
            maxLines: 4,
          ),
        )),
      ]),
    ]));
  }
}
