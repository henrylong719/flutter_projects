import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  final maxDiceNumber = 6;

  void setDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(maxDiceNumber) + 1;
      rightDiceNumber = Random().nextInt(maxDiceNumber) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  setDiceNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          )),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: () {
                      setDiceNumber();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'))),
          ),
        ],
      ),
    );
  }
}
