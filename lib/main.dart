import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(children: <Widget>[
          Text("The question:"),
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
