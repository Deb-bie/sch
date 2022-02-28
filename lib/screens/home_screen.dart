// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scholarships/categories/can_sch.dart';
import 'package:scholarships/categories/masters.dart';
import 'package:scholarships/categories/phd.dart';
import 'package:scholarships/categories/uk_sch.dart';
import 'package:scholarships/categories/undergrad.dart';
import 'package:scholarships/categories/usa_sch.dart';


// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 0,
        // leading: Icon(Icons.menu),
        title: Text("Scholarships Hub"),
        centerTitle: true,

      ),
      // resizeToAvoidBottomInset: false,
      body: SafeArea(

        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/b1.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Text("Categories", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 20,),
              
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Usa()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/u1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                                      
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "US Scholarships",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Canada()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/c1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Canadian Scholarships",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Uk()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/k1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Uk Scholarships",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Undergraduate()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/b1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Undergraduate",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Masters()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/b2.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Masters",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Phd()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/k1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Transform.translate(
                            offset: Offset(-10, -4),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 120),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "PhD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black, 
                                    fontSize: 15, 
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),                      
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ]
                  
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}



