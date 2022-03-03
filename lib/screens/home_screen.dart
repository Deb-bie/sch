// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scholarships/categories/africans.dart';
import 'package:scholarships/categories/asians.dart';
import 'package:scholarships/categories/can_sch.dart';
import 'package:scholarships/categories/masters.dart';
import 'package:scholarships/categories/phd.dart';
import 'package:scholarships/categories/uk_sch.dart';
import 'package:scholarships/categories/undergrad.dart';
import 'package:scholarships/categories/usa_sch.dart';
import 'package:scholarships/categories/women.dart';



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
        title: Text("Scholarships List"),
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
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Canada()));
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

                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "USA",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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

                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Canada",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "UK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 53),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Undergraduate",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Masters",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                              image: AssetImage('assets/images/a1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "PhD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Africans()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/a2.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Africans",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Asians()));
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/a3 .jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Asians",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Women()));
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
                          child: Center(
                            child: Transform.translate(
                              offset: Offset(1, -10),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,  
                              ),
                              // child: Icon(Icons.call_made, size: 20, color: Color.fromARGB(255, 121, 125, 248),),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Women",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 121, 125, 248)
                                  ),
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



