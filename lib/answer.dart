import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // We need to pass a function for the button, use callback for answerQuestion
  // Use VoicCallback (as the function returns nothing) instead of Function
  // if errors.
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.only(top: 5),
        ),
        child: Text("answer"),
        onPressed: selectHandler,
      ),
    );
  }
}
