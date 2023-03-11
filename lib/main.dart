// Packages:
import 'package:flutter/material.dart';

// Files:
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
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
    if (_questionIndex < questions.length) {
      print("We have more questions!");
    } else {
      print("We are out of questions, you're done!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < questions.length
            ? Column(children: <Widget>[
                Question(
                    questions[_questionIndex]['questionText']), // access by key
                // map List into a List of Widgets, spread them so we pass individual
                //  widgets to column to make it happy
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answers) => Answer(_answerQuestion, answers))
                    .toList()
              ])
            : Center(
                child: Text(
                  "All questions answered, thank you.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
