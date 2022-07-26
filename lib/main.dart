import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void anserQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What's your favorite Color?",
      "answers": [
        {"text": "Black", "scoure": 5},
        {"text": "Green", "scoure": 10},
        {"text": "Blue", "scoure": 15},
        {"text": "Red", "scoure": 20},
      ],
    },
    {
      "questionText": "What's your favorite Animal?",
      "answers": [
        {"text": "Dogs", "scoure": 5},
        {"text": "Cats", "scoure": 10},
        {"text": "Rabbits", "scoure": 15},
        {"text": "giraffes", "scoure": 20},
      ],
    },
    {
      "questionText": "What's your favorite FootBall TEAM?",
      "answers": [
        {"text": "Team One", "scoure": 5},
        {"text": "Team Two", "scoure": 10},
        {"text": "Team Three", "scoure": 15},
        {"text": "Team Four", "scoure": 20},
      ],
    },
    {
      "questionText": "What's your favorite Food Dish?",
      "answers": [
        {"text": "spaghetti", "scoure": 5},
        {"text": "Salad", "scoure": 10},
        {"text": "Pizza", "scoure": 15},
        {"text": "Burger", "scoure": 20},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(color: b),
          ),
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;

                  if (isSwitched) {
                    b = Colors.white;
                    w = Colors.black;
                  } else {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: b,
              inactiveThumbColor: b,
              inactiveTrackColor: b,
            ),
          ],
        ),
        body: Container(
          color: w,
          width: double.infinity,
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, anserQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
