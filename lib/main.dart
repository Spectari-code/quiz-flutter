import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(children: <Widget>[
          Text("The question:"),
          ElevatedButton(onPressed: null, child: Text("Answer 1")),
          ElevatedButton(onPressed: null, child: Text("Answer 2")),
          ElevatedButton(onPressed: null, child: Text("Answer 3")),
        ]),
      ),
    );
  }
}
