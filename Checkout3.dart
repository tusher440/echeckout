// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class out extends StatefulWidget {
//   //const out({Key? key}) : super(key: key);
//
//   @override
//   _outState createState() => _outState();
// }
//
// class _outState extends State<out> {
//
//   var Street1;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             TextField(
//               onChanged: (input) {
//                 Street1 = input;
//               },
//               //controller: _Street1Controller,
//               decoration: InputDecoration(
//                 hintText: "abc avenue Bangladesh",
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 FirebaseFirestore.instance.collection("userdata").add({
//                   "Street1": Street1
//
//                 });
//               },
//
//               child: Text("send"),
//               color: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
