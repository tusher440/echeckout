import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_echeckout/Checkout2.dart';
import 'package:flutter_echeckout/database.dart';
import 'package:http/http.dart';

class checkout1 extends StatefulWidget {
  // const chechout1({Key? key}) : super(key: key);

  @override
  _checkout1State createState() => _checkout1State();
}


 class _checkout1State extends State<checkout1> {

  String Street1;
  String Street2;
  String City;
  String State;
  String Country;

  final CollectionReference newcollection = Firestore.instance.collection('userdata');
  String uid;

  Future<void> checkout1() async{
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    await Database(uid: user.uid).updateuserdata(Street1, Street2, City, State, Country);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
        title: Center(
          child: Text("Checkout",
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Divider(
                        height: 10,
                        color: Colors.red,
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                      );
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Icon(Icons.circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  IconButton(
                    onPressed: () {
                      Divider(
                        height: 10,
                        color: Colors.redAccent,
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                      );

                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 90, bottom: 10),
                      child: Icon(Icons.circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  IconButton(
                    onPressed: () {
                      Divider(
                        height: 10,
                        color: Colors.redAccent,
                        indent: 5,
                        endIndent: 5,
                        thickness: 2,
                      );

                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 170, bottom: 10),
                      child: Icon(Icons.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text("Delivery",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text("Address",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text("Payments",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [

                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.check_circle,
                      color: Colors.green,
                    ),
                  ),
                  Text("Billing address is the same as delivery address",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text("Street 1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              //height: 40,
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "abc avenue Bangladesh",
                  ),
                  onChanged: (input) {
                    Street1 = input;
                  },
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text("Street 2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              //height: 40,
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (input) {
                    Street2 = input;
                  },

                  decoration: InputDecoration(
                    hintText: "Road no 12",
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text("City",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              //height: 40,
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (input) {
                    City = input;
                  },

                  decoration: InputDecoration(
                    hintText: "Dhaka",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 320),
                          child: Text("State",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
            ),

            Container(
              //height: 40,
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  onChanged: (input) {
                    State = input;
                  },

                  decoration: InputDecoration(
                    hintText: "Dhaka",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Country",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Container(
              //height: 40,
              //color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  onChanged: (input) {
                    Country = input;
                  },

                  decoration: InputDecoration(
                    hintText: "Bangladesh",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => checkout1(),
                        )
                        );
                      },

                      child: Text("BACK",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                        ),
                      ),

                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => checkout2(),
                              )
                              );
                            },

                            child: Text("NEXT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                          ),

                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

