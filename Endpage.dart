import 'package:flutter/material.dart';

class endpage extends StatefulWidget {
  //const endpage({Key? key}) : super(key: key);

  @override
  _endpageState createState() => _endpageState();
}

class _endpageState extends State<endpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to checkout end page"),
      ),
    );
  }
}
