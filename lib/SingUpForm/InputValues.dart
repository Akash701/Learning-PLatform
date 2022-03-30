import 'package:flutter/material.dart';

class InputValues extends StatelessWidget {
  String values;
  InputValues(this.values);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: values,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
