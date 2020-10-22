// app.dart

import 'package:flutter/material.dart';

import 'screens/overview_habit/overview_habit.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OverviewHabit(),
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],

      // Define the default font family.
      // fontFamily: 'SourceSerifPro',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: sourceSerif(),
    );
  }
}
