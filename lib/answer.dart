import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // We need to pass a function for the button, use callback for answerQuestion
  // Use VoicCallback (as the function returns nothing) instead of Function
  // if errors.
  final Function selectHandler;
  final String textAnswer;

  Answer(this.selectHandler, this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.only(top: 5),
        ),
        child: Text(textAnswer),
        onPressed: selectHandler,
      ),
    );
  }
}
