import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

// void playSound(int soundNumber) {}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNumber.wav');
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.yellow, soundNumber: 2),
            buildKey(color: Colors.blue, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.orange, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
