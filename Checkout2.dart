import 'package:flutter/material.dart';
import 'package:flutter_echeckout/Checkout.dart';
import 'package:flutter_echeckout/Checkout1.dart';
import 'package:flutter_echeckout/Endpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class checkout2 extends StatefulWidget {
  //const checked({Key? key}) : super(key: key);

  @override
  _checkout2State createState() => _checkout2State();
}

class _checkout2State extends State<checkout2> {
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
                        color: Colors.green,
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
                              padding: const EdgeInsets.only(left: 20),
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
                                color: Colors.white,
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
              color: Colors.orange,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {

                    } ,
                    icon: Icon(FontAwesomeIcons.paypal),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {

                        } ,
                        icon: Icon(FontAwesomeIcons.addressCard),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {

                        } ,
                        icon: Icon(FontAwesomeIcons.sortAmountDown),
                      ),
                    ],
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
                    Text("Name on Card",
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
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "David Spade",
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
                    Text("Card Number",
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
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "4560 5674 3224 4543",
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 330),
                      child: Icon(FontAwesomeIcons.ccMastercard),
                    ),
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
                    Text("Expiry Date",
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
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "09/18",
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("CVV",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Container(
              //height: 40,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "667",
                  ),
                ),
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
                  Text("Save this card details",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
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
                    padding: const EdgeInsets.only(left: 25),
                    child: SingleChildScrollView(
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
                            fontSize: 30,
                          ),
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
                          padding: const EdgeInsets.only(left: 120),
                          child: FlatButton(
                            // color: Colors.orange,

                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => endpage(),
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
}
