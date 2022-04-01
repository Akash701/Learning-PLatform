import 'dart:convert';
import 'package:healthcare/ApiCall/models.dart';
import 'package:healthcare/ApiCall/models.dart';

import 'ApiScreen.dart';
import 'package:http/http.dart' as http;

String URL = "http://learningapp.e8demo.com/api/home_page/";

class LearningApi {
  static Future<List<Learning>> getLearning() async {
    var uri = Uri.https('http://learningapp.e8demo.com', '/api/home_page/', {
      "actual_price": "2500.00",
      "price": "1500.00",
      "currency": '1',
    });

    final response = await http.get(uri, headers: {
      "x-rapidapi-host": "http://learningapp.e8demo.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['data']) {
      _temp.add(i["listing_image"]["price"]);
    }

    return Learning.learningFromSnapshot(_temp);
  }
}
