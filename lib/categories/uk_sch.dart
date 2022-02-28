import 'package:flutter/material.dart';


class Uk extends StatefulWidget {
  const Uk({ Key? key }) : super(key: key);

  @override
  _UkState createState() => _UkState();
}

class _UkState extends State<Uk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "USA Scholarships"
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("UK")
        ),
      ),
    );
  }
}

