import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'package:quiz_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() anserQuestion;

  Quiz(this.questions, this.questionIndex, this.anserQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questionText"].toString()),
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(anserQuestion, answer);
        }).toList(),
      ],
    );
  }
}
