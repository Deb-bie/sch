import 'package:flutter/material.dart';
import 'package:scholarships/components/bottomNavigation/botton_navigation.dart';
import 'package:scholarships/screens/home_screen.dart';

class Layout extends StatelessWidget {
  const Layout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
          Home(),
          BottomNavigationBars(),
        ],
      ),
      
    );
  }
}