import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../screens/home/model/random_model.dart';

class ApiHelper{
  Future<RandomModel> apiCaller() async {
    Uri uri = Uri.parse("https://randomuser.me/api/");
    var response = await http.get(uri);
    var json = jsonDecode(response.body);

    RandomModel random = RandomModel.fromJson(json);
    return random;
  }
}