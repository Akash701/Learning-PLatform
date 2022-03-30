import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('By using our service you are agreeing our '),
                  Text(
                    'Terms and Privecy statement',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Signinoptions(Icons.mail, "Sgin in with E-mail"),
                  SizedBox(
                    height: 10,
                  ),
                  Signinoptions(Icons.search, "Sign in with Google"),
                  SizedBox(
                    height: 10,
                  ),
                  Signinoptions(Icons.facebook, "Sign in with Facebook"),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New here? '),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Signinoptions extends StatelessWidget {
  IconData icon;
  String options;
  Signinoptions(this.icon, this.options);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                icon,
                size: 40,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                options,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
        color: Colors.white54,
      ),
    );
  }
}
