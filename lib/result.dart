import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;
  final int totalScore;

  String get resultPhrase {
    String resultText;
    if (totalScore >= 70) {
      resultText = "You are awesome !";
    } else if (totalScore >= 40) {
      resultText = "Pretty likable ! \n Develop your self more";
    } else {
      resultText = "Your are so bad !";
    }
    return resultText;
  }

  Result(this.resetQuiz, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Your Score is",
            style: TextStyle(
              color: b,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$totalScore",
            style: TextStyle(
              color: b,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "$resultPhrase",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: b,
              fontSize: 25,
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
