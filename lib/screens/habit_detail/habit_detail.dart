import 'package:flutter/material.dart';
import '../../models/habit.dart';
import 'habit_section.dart';
import 'image_banner.dart';

const String _lorem =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

class HabitDetail extends StatelessWidget {
  final int _habitID;

  HabitDetail(this._habitID);

  @override
  Widget build(BuildContext context) {
    final habit = Habit.fetchByID(_habitID);

    return Scaffold(
      appBar: AppBar(
        title: Text(habit.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/kiyomizu-dera.jpg"),
          ]..addAll(habitSections(habit))),
    );
  }

  List<Widget> habitSections(Habit habit) {
    return [HabitSection(habit.name, habit.history.toString())];
  }
}
