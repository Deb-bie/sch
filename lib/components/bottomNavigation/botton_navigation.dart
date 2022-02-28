// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scholarships/screens/favorites.dart';
import 'package:scholarships/screens/home_screen.dart';
import 'package:scholarships/screens/scholarships.dart';
import 'package:scholarships/screens/settings.dart';


class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({ Key? key }) : super(key: key);

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {
  int _currentIndex = 0;
  List _screens = [
    Home(),
    Favorites(),
    Scholarships(),
    Settings(),

  ];


  void _updateIndex(int value){
    setState(() {
      _currentIndex = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        // backgroundColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),

          BottomNavigationBarItem(
            label: "Favorites",
            icon: Icon(Icons.favorite),
          ),

          BottomNavigationBarItem(
            label: "Scholarships",
            icon: Icon(Icons.car_rental),
          ),

          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

