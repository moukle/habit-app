import 'package:flutter/material.dart';
import 'package:habitator/models/habit.dart';
import 'package:habitator/widgets/calender.dart';

class HabitProgress extends StatelessWidget {
  final int _habitID;
  static const double _hPad = 16.0;

  HabitProgress(this._habitID);

  @override
  Widget build(BuildContext context) {
    Habit habit = Habit.fetchByID(_habitID);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child:
                Text(habit.name, style: Theme.of(context).textTheme.bodyText1)),
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: _hPad),
            child: Calender(10, 2020)),
      ],
    );
  }
}
