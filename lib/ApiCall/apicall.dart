import 'package:healthcare/ApiCall/models.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:healthcare/ApiCall/LearningApi.dart';

import 'ApiScreen.dart';

const Api1 = "http://learningapp.e8demo.com";
const Api2 = "/api/home_page/";

class ApiCall extends StatefulWidget {
  @override
  _ApiCallState createState() => _ApiCallState();
}

String data = '';
Map mapResponse = {};
String baseUrl = "http://learningapp.e8demo.com/api/home_page/";

class _ApiCallState extends State<ApiCall> {
  List<Learning> _learning;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getLearning();
  }

  Future<void> getLearning() async {
    _learning = await LearningApi.getLearning();
    setState(() {
      _isLoading = false;
    });
    print(_learning);
  }

  Future apicall() async {
    http.Response response = await http
        .get(Uri.parse('http://learningapp.e8demo.com/api/home_page/'));
    if (response.statusCode == 200) {
      setState(() {
        Map mapResponse = json.decode(response.body);
      });
    }
    // else {
    //   print(response.statusCode);
    // }
  }

  String formater(String url) {
    return baseUrl + url;
  }

  NetworkImage getImage(String ImageName) {}
  // string url = formater("")

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book),
              SizedBox(width: 10),
              Text('Our Courses')
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _learning.length,
                itemBuilder: (context, index) {
                  return LearningCard(
                      title: _learning[index].name,
                      CourseTime: _learning[index].cost,
                      rating: _learning[index].rating.toString(),
                      thumbnailUrl: _learning[index].images);
                },
              ));
  }
}
