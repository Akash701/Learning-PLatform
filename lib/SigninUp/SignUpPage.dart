import 'package:flutter/material.dart';
import 'package:healthcare/Signin/signinOption.dart';
import 'package:healthcare/SingUpForm/SignupForm.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Sign up",
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
                height: 20,
              ),
              Row(children: [
                Expanded(
                  child: Divider(
                    indent: 30,
                    endIndent: 15,
                    thickness: 1,
                  ),
                ),
                Text("OR"),
                Expanded(
                  child: Divider(
                    endIndent: 30,
                    indent: 15,
                    thickness: 1,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
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
              Text('Have an account? '),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupForm()),
                  );
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
