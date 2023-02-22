import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int Score;
  final VoidCallback resetQuiz;
  const Results(this.Score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    late String Output;

    if (Score <= 8) {
      Output = "You are a good man!";
    } else if (Score <= 12) {
      Output = "You are fine..";
    } else if (Score <= 16) {
      Output = "uff.. kind of a bad personality";
    } else {
      Output = "You are a bad man!";
    }

    return Center(
      child: Column(
        children: [
          Text(
            Output,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text(
              "Reset Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
