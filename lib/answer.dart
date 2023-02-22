import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, padding: EdgeInsets.only(top: 5)),
        child: Text("answer"),
        onPressed: null,
      ),
    );
  }
}
