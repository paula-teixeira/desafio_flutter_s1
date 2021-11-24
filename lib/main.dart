import 'package:flutter/material.dart';
import 'screens/initial_screen.dart';

void main() {
  runApp(MemeWars());
}

class MemeWars extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
      home: InitialScreen(),
    );
  }
}
// primaryColor: Colors.yellow,
// scaffoldBackgroundColor: Colors.black,
// textTheme: TextTheme(
// bodyText2: TextStyle(
// color: Colors.yellow,
