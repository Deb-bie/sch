import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scholarships/components/tile.dart';
import 'package:scholarships/models/model.dart';
import 'package:scholarships/services/api_services.dart';


class Masters extends StatefulWidget {
  const Masters({ Key? key }) : super(key: key);

  @override
  _MastersState createState() => _MastersState();
}

class _MastersState extends State<Masters> {
    MastersApi client = MastersApi();

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

