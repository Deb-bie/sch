import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scholarships/components/tile.dart';
import 'package:scholarships/models/model.dart';
import 'package:scholarships/services/api_services.dart';


class Uk extends StatefulWidget {
  const Uk({ Key? key }) : super(key: key);

  @override
  _UkState createState() => _UkState();
}

class _UkState extends State<Uk> {
  UKApi client = UKApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        // ignore: prefer_const_constructors
        title: Text(
          "UK Scholarships"
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: client.getModel(),
          builder: (BuildContext context, AsyncSnapshot<List<Model>> snapshot) {
            if (snapshot.hasData){
              List<Model>? models = snapshot.data;
              return ListView.builder(
                itemCount: models!.length,
                itemBuilder: (BuildContext context, index) => tile(
                  models[index], context
                ),
              );
            }

            return const Center(
              child: CupertinoActivityIndicator(radius: 20,)
            );
          }
        ),
      ),
    );
  }
}

