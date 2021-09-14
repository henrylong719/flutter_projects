import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback restartGame;

  Result(this.resultScore, this.restartGame);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'A';
    } else if (resultScore <= 12) {
      resultText = 'B';
    } else {
      resultText = 'C';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: restartGame,
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
        )
      ]),
    );
  }
}
