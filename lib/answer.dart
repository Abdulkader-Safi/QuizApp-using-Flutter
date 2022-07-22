import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() answerFunction;

  Answer(this.answerFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: w,
        onPressed: answerFunction,
        child: Text(answerText, style: TextStyle(color: b, fontSize: 25)),
      ),
    );
  }
}
