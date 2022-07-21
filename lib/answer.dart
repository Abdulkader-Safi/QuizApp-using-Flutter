import 'package:flutter/material.dart';

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
        textColor: Colors.white,
        child: Text(answerText, style: TextStyle(fontSize: 25)),
        onPressed: answerFunction,
      ),
    );
  }
}
