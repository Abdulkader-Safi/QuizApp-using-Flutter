import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;

  const Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Done !",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text(
              "Restart The Quiz",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
