import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Creates a copy of this theme but
      // with the given fields replaced with the new values.
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => InputPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/result': (context) => ResultsPage(
              bmiResult: '',
              resultText: '',
              interpretation: '',
            ),
      },
    );
  }
}
