import 'package:flutter/services.dart';

class Habit {
  final int id;
  final String name;

  final int min;
  final int max;
  final List<int> history;

  Habit(this.id, this.name, this.min, this.max, this.history);

  static Habit fetchByID(int habitID) {
    List<Habit> habits = Habit.fetchAll();

    for (var habit in habits) {
      if (habit.id == habitID) {
        return habit;
      }
    }
  }

  // make this a map
  static List<Habit> fetchAll() {
    return [
      Habit(0, "Running", 1, 2, [1, 1, 1, 0]),
      Habit(1, "Walking", 1, 2, [1, 1, 1, 0])
    ];
  }
}
