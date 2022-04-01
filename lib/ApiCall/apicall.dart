import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

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

  @override
  void initState() {
    apicall();
    super.initState();
  }

  String formater(String url) {
    return baseUrl + url;
  }

  NetworkImage getImage(String ImageName) {}
  // string url = formater("")

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 300,
              // width: 300,
              child: RecipeCard(
                title: "My recipie",
                cookTime: '30min',
                rating: '4.3',
                thumbnailUrl:
                    'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Networking {
//   Networking(this.url1, this.url2);
//
//   final String url1;
//   final String url2;
// }
//
// class GetUserData {
//   Future<dynamic> UserInfo() async {
//     Networking network = Networking(Api1, Api2);
//     var UserData = await network.apicall();
//     return UserData;
//   }
// }
