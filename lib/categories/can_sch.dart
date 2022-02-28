import 'package:flutter/material.dart';


class Canada extends StatefulWidget {
  const Canada({ Key? key }) : super(key: key);

  @override
  _CanadaState createState() => _CanadaState();
}

class _CanadaState extends State<Canada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "Canadian Scholarships"
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("Canada")
        ),
      ),
    );
  }
}

