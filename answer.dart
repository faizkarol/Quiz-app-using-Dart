import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Set a varibale that will recieve a pointer to a variable
  final Function selectHandler;
  // Set a varibale that will recieve the answer text
  final String answerText;

  // Constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: RaisedButton(
        color: Colors.lightBlue[700],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}