import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ApiData(),
    );
  }
}

class ApiData extends StatefulWidget {
  @override
  _ApiDataState createState() => _ApiDataState();
}

Future getUserData() async {
  var response =
      await http.get(Uri.http('learningapp.e8demo.com', 'api/home_page/'));
  var jsonData = jsonDecode(response.body);
  List<User> users = [];

  for (var u in jsonData) {
    User user = User("name", "email", "username");
    users.add(user);
  }
  print(users.length);
  return users;
}

class _ApiDataState extends State<ApiData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                getUserData();
              },
              child: Text('Get Data'),
            ),
            ListView(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class User {
  final String name, email, username;

  User(this.name, this.email, this.username);
}
