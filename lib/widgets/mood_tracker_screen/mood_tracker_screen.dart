import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/days_row/days_row.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/moods_list/moods_list.dart';

class MoodTrackerScreen extends StatefulWidget {
  const MoodTrackerScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MoodTrackerScreenState();
  }
}

class _MoodTrackerScreenState extends State<MoodTrackerScreen> {
  final List<Mood> _registeredMoods = [
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note',
      moodCategory: MoodCategory.amazing,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Tracker'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark_rounded),
              ),
              const SizedBox(width: 8),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded)),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          DaysRow(moods: _registeredMoods),
          SizedBox(height: 16),
          MoodsList(),
        ],
      ),
    );
  }
}
