# Flutter



## Column & Row Widget for Layout



<img src="Images/Screen Shot 2021-07-05 at 9.21.05 pm.png" alt="Screen Shot 2021-07-05 at 9.21.05 pm" style="zoom:40%;" />



```dart
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.red,
                child: Text('Container 1')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                    child: Text('Container 2')),
                Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                    child: Text('Container 3')),
              ],
            ),
            Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.blue,
                child: Text('Container 4'))
          ],
        )),
      ),
    );
  }
}

```





## MiCard - Build UIs with flutter widgets



<img src="Images/Screen Shot 2021-07-06 at 8.10.28 pm.png" alt="Screen Shot 2021-07-06 at 8.10.28 pm" style="zoom:40%;" />



```dart


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/me.png'),
            ),
            Text(
              'Henry Long',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              // fontWeight
            ),
            Text(
              'Software Engineer',
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 300.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+61 123 3349435',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'henrylong719@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
```





## Dicee



<img src="Images/Screen Shot 2021-07-07 at 8.45.05 pm.png" alt="Screen Shot 2021-07-07 at 8.45.05 pm" style="zoom:40%;" />



```dart


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

```



## Rainbow piano



<img src="Images/Screen Shot 2021-07-08 at 8.42.30 pm.png" alt="Screen Shot 2021-07-08 at 8.42.30 pm" style="zoom:40%;" />



```dart

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNumber.wav');
      },
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

```

