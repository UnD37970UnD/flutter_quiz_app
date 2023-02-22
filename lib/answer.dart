import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback answerQuestion;
  const Answer(this.answerQuestion, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Text(answer),
      ),
    );
  }
}
