import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questingText;

  Question(this.questingText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questingText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
