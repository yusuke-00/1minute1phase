import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: EdgeInsets.only(top: 56, left: 12, right: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff7C82D4), Color(0xff3A8AE3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(),
      ),
    );
  }
}
