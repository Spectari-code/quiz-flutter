// Packages:
import 'package:flutter/material.dart';

// Files:
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]),
          // Pass pointer of answerQuestion not answerQuestion() as that will
          // excecute the function when passed instead of waiting for button to
          // be pressed. In short, dont use (), just use the name.
          ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 1")),
          ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 2")),
          ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 3")),
        ]),
      ),
    );
  }
}
