import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required
        this.questions, // If error, remove @, works with newer Flutter v's
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(questions[questionIndex]['questionText']
              as String), // access by key
          // map List into a List of Widgets, spread them so we pass individual
          //  widgets to column to make it happy
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answers) => Answer(() => answerQuestion(answers['score']),
                  answers['text'] as String))
              .toList()
        ]);
  }
}
