import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  String uid;
  Database({this.uid});
  final CollectionReference user = Firestore.instance.collection('userdata');
  Future updateuserdata( String Street1, String Street2, String City, String State, String Country) async {
    return await user.document(uid).setData({
      "Street": Street1,
      "Road no": Street2,
      "Dhaka": City,
      "Dhaka": State,
      "Bangladesh": Country,
    });
  }
}


