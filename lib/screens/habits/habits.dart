import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app.dart';
import '../../models/habit.dart';
import 'habit_progress.dart';

class Habits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final habits = Habit.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Habits'),
      ),
      body: ListView(
        children: habits
            .map((habit) => GestureDetector(
                onTap: () => _onHabitTap(context, habit.id),
                // child: Container(child: Text(habit.name))))
                child: Container(child: HabitProgress(habit.id))))
            .toList(),
      ),
    );
  }

  _onHabitTap(BuildContext context, int habitID) {
    Navigator.pushNamed(context, HabitDetailRoute, arguments: {"id": habitID});
  }
}
