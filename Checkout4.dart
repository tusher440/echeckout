// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:http/http.dart';
//
// class Check4 extends StatefulWidget {
//   //const Check4({Key? key}) : super(key: key);
//
//   @override
//   _Check4State createState() => _Check4State();
// }
//
// class _Check4State extends State<Check4> {
//
//   var Street1;
//   var City;
//   var State;
//   var Country;
//
//   Future sendData() async{
//
//     final db = FirebaseFirestore.instance.collection("sendData").add({
//       'Street1': "Street1",
//       'City': "City",
//       'State': "State",
//       'Country': "Country",
//     });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: FlatButton(
//           onPressed: () {
//             sendData();
//           }
//         ),
//       ),
//     );
//   }
// }
