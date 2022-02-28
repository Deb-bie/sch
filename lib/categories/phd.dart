import 'package:flutter/material.dart';


class Phd extends StatefulWidget {
  const Phd({ Key? key }) : super(key: key);

  @override
  _PhdState createState() => _PhdState();
}

class _PhdState extends State<Phd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "PHD Scholarships"
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("PHD")
        ),
      ),
    );
  }
}

