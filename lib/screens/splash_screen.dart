// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scholarships/components/sidebar/sidebar_layout.dart';
import 'package:scholarships/screens/home_layout.dart';
import 'package:scholarships/screens/home_screen.dart';

  

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  //  late AnimationController animationController;

  late AnimationController _controller;

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }

  @override
  void initState(){

    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    Timer(
      Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => 
          // Home(),
          // SideBarLayout(),
          // Layout(),
          Home()
        ))
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              // color: Colors.blue,
              color: Color(0xFF262AAA),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [

              SpinKitSquareCircle(
                color: Colors.yellow,
                size: 50.0,
                // controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1000)),
                controller: _controller,
              ),

            ],
          ),
        ],
      ),
    );
  }
}