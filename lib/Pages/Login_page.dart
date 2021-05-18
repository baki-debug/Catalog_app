import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
       child: Container(
          child: Center(child: Text("LOGIN PAGE",style: TextStyle(
            fontSize: 45,
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold
          ),)),
        ),
      );
  }
}
