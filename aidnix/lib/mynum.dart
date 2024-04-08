// // ignore_for_file: avoid_unnecessary_containers

// import 'package:flutter/material.dart';

// class mynum extends StatefulWidget {
//   const mynum({super.key});

//   @override
//   State<mynum> createState() => _mynumState();
// }

// class _mynumState extends State<mynum> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(children: [
//         Container(
//           height: 932,
//           child: Image.asset('assets/images/aid_bg.png',
//               fit: BoxFit.cover,
//               color: Color(0xff31C48D).withOpacity(0.5),
//               colorBlendMode: BlendMode.darken),
//         ),
//         Column(children: [
//           Container(
//             margin: EdgeInsets.only(left: 20, top: 35),
//             height: 300,
//             child: Image.asset(
//               'assets/images/aid_doctor.png',
//             ),
//           ),
//           Center(
//             child: Text('Lorem ipsum dolor sit',
//                 style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold)),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Ex voluptas ratione et quas esse ut aperiam quaerat. Sit velit similique qui laudantium recusandae',
//             style: TextStyle(color: Colors.white, fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: 80,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Text(
//                       'Enter Your Phone Number',
//                       style:
//                           TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'We’ll send you a Verification code to know \n you’re real',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10))),
//                   ),
//                   Text('|'),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton(
//                     child: Text(
//                       'Send OTP',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {},
//                   )
//                 ],
//               ),
//               height: 520,
//               width: 450,
//             ),
//           )
//         ])
//       ]),
//     ));
//   }
// }
