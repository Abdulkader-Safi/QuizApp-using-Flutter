import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(
            questionText,
            style: TextStyle(
              color: b,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
