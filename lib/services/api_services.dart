import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:scholarships/models/model.dart';


class USApi{
  final url = 'https://sch-hive.herokuapp.com/usa';

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

class UKApi{
  final url = 'https://sch-hive.herokuapp.com/uk';

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


class CanadaApi{
  final url = 'https://sch-hive.herokuapp.com/canada';

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


class UndergradApi{
  final url = 'https://trial-ads.herokuapp.com/undergrad';

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


class MastersApi{
  final url = 'https://trial-ads.herokuapp.com/masters';

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


class PhdApi{
  final url = 'https://trial-ads.herokuapp.com/phd';

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

class AfricansApi{
  final url = 'https://trial-ads.herokuapp.com/africans';

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

class AsiansApi{
  final url = 'https://trial-ads.herokuapp.com/asians';

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

class WomenApi{
  final url = 'https://trial-ads.herokuapp.com/women';

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


