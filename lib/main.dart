import 'package:quiz/result.dart';
import 'package:quiz/result.dart';
import 'package:quiz/result.dart';
import 'package:quiz/result.dart';
import 'package:quiz/result.dart';
// Packages:
import 'package:flutter/material.dart';

// Files:
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        "Black",
        "Red",
        "Green",
        "White",
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        "Dog",
        "Cat",
        "Hammster",
        "Snake",
      ],
    },
    {
      "questionText": "What's your favorite season?",
      "answers": [
        "Spring",
        "Summer",
        "Autum",
        "Winter",
      ],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
