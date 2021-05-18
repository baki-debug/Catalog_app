import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Bakhshish";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY FIRST APP"),
      ),
      body: Center(
        child: Container(
          child: Text("HELLO APP"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
