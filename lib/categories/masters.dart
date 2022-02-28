import 'package:flutter/material.dart';


class Masters extends StatefulWidget {
  const Masters({ Key? key }) : super(key: key);

  @override
  _MastersState createState() => _MastersState();
}

class _MastersState extends State<Masters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "Masters Scholarships"
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("Masters")
        ),
      ),
    );
  }
}

