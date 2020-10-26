// app.dart

import 'package:flutter/material.dart';

import 'screens/habits/habits.dart';
import 'screens/habit_detail/habit_detail.dart';

import 'style.dart';

const HabitsRoute = "/";
const HabitDetailRoute = "/habit_detail";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Habits(),
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

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case HabitsRoute:
          screen = Habits();
          break;
        case HabitDetailRoute:
          screen = HabitDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
