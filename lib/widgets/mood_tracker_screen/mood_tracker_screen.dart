import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/days_row/days_row.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/moods_list/moods_list.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/add_edit_mood/add_edit_mood.dart';

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
      moodNote:
          'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note2',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note3',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note4',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note5',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note6',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note7',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note8',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note9',
      moodCategory: MoodCategory.amazing,
    ),
    Mood(
      date: DateTime.now(),
      moodNote: 'Here is note10',
      moodCategory: MoodCategory.amazing,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Tracker'),
        backgroundColor: Colors.blueGrey,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_mark_rounded),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: () {
                  addEditMoodBottomSheet(context);
                },
                icon: Icon(Icons.add_box_rounded),
              ),
            ],
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            DaysRow(moods: _registeredMoods),
            SizedBox(height: 16),
            MoodsList(moods: _registeredMoods),
          ],
        ),
      ),
    );
  }
}
