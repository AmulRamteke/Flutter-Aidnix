// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';

// class myphonenum extends StatefulWidget {
//   const myphonenum({super.key});

//   @override
//   State<myphonenum> createState() => _myphonenumState();
// }

// class _myphonenumState extends State<myphonenum> {
//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(children: [
//         SingleChildScrollView(
//           child: widget,
//         ),
//         Expanded(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 bottom: 400,
//               ),
//               child: Container(
//                 alignment: Alignment.topCenter,
//                 height: 320,
//                 child: Image.asset(
//                   'assets/images/aid_doctor.png',
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(bottom: 55),
//           child: Center(
//             child: Text(
//               'Lorem ipsum dolor sit',
//               style: TextStyle(
//                   fontSize: 28,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             top: 420,
//           ),
//           child: Container(
//             margin: EdgeInsets.all(20),
//             child: Text(
//               'Ex voluptas ratione et quas esse ut aperiam quaerat. Sit velit similique qui laudantium recusandae',
//               style: TextStyle(color: Colors.white, fontSize: 18),
//               textAlign: TextAlign.center,
//               maxLines: 3,
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//             alignment: Alignment.center,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 200),
//               // child: SmoothPageIndicator(
//               //   controller: _controller,
//               //   count: 3,
//               //   effect: SlideEffect(
//               //     dotColor: Color(0xFFE9F6FC),
//               //   ),
//               // ),
//             )),
//         SizedBox(
//           height: 15,
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.only(top: 600),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.white,
//               ),
//               height: 350,
//               width: 480,
//               // color: Colors.white,
//             ),
//           ),
//         ),
//         Column(children: [
//           Container(
//             padding: EdgeInsets.only(top: 400),
//             child: Text('Enter Your Phone Number ',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 26,
//                 )),
//           ),
//         ]),
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//           padding: EdgeInsets.only(top: 500),
//           child: Text(
//               'We’ll send you a Verification code to know \n you’re real ',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12,
//                   color: Colors.grey[400])),
//         ),
//         SizedBox(
//           height: 25,
//         ),
//       ]),
//     );
//   }
// }
//   // Center(child: TextField()),
//         // TextField(),
//         // Center(
//         //   child: Column(
//         //     children: [
//         //       Container(
//         //           padding: EdgeInsets.only(top: 700),
//         //           alignment: Alignment.center,
//         //           // height: 20,
//         //           // width: double.infinity,
//         //           // margin: EdgeInsets.all(15),
//         //           child: ElevatedButton(
//         //             onPressed: () {
//         //               // Navigator.push(
//         //               //   context,
//         //               //   MaterialPageRoute(builder: (context) => notselect()),
//         //               // );
//         //             },
//         //             style: ElevatedButton.styleFrom(
//         //                 primary: Color(0xff31C48D),
//         //                 onPrimary: Colors.white,
//         //                 elevation: 1,
//         //                 padding: EdgeInsets.all(15),
//         //                 shape: RoundedRectangleBorder(
//         //                   borderRadius: BorderRadius.circular(20),
//         //                 )),
//         //             child: Text(
//         //               'Send OTP',
//         //               style: TextStyle(fontSize: 25),
//         //             ),
//         //           )),
//         //     ],
//         //   ),
//         // ),