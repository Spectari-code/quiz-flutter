import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable!";
    } else {
      resultText = "You are pretty strange, but it's ok.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resetQuiz, child: Text("Restart Quiz!"))
        ],
      ),
    );
  }
}
