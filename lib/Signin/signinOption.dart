import 'package:flutter/material.dart';

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
