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

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void anserQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What's your favorite Color?",
      "answers": ["Black", "Green", "Blue", "Red"],
    },
    {
      "questionText": "What's your favorite Animal?",
      "answers": ["Dogs", "Cats", "Rabbits", "giraffes"],
    },
    {
      "questionText": "What's your favorite FootBall TEAM?",
      "answers": ["Team One", "Team Two", "Team Three", "Team Four"],
    },
    {
      "questionText": "What's your favorite Food Dish?",
      "answers": ["spaghetti", "Salad", "Pizza", "Burger"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Container(
          width: double.infinity,
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, anserQuestion)
              : Result(_resetQuiz),
        ),
      ),
    );
  }
}
