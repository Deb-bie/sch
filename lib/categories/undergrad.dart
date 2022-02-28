import 'package:flutter/material.dart';


class Undergraduate extends StatefulWidget {
  const Undergraduate({ Key? key }) : super(key: key);

  @override
  _UndergraduateState createState() => _UndergraduateState();
}

class _UndergraduateState extends State<Undergraduate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "Undergraduate Scholarships"
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("Undergraduate")
        ),
      ),
    );
  }
}

