import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:scholarships/models/model.dart';


class USApi{
  final url = 'https://sch-hive.herokuapp.com/';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}





