import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
          Text(questions[questionIndex]),
          // Pass pointer of answerQuestion not answerQuestion() as that will
          // excecute the function when passed instead of waiting for button to
          // be pressed. In short, dont use (), just use the name.
          ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
          ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
          ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
        ]),
      ),
    );
  }
}
