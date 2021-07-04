import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(left: 30.0),
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Text('Hello Henry'),
          ),
        ),
      ),
    );
  }
}
