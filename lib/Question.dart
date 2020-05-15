import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String QueZ;
  Question(this.QueZ);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(16),
        child: Text(QueZ,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26)));
  }
}
