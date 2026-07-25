import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/add_edit_mood/add_edit_mood.dart';

class MoodItem extends StatelessWidget {
  const MoodItem({super.key, required this.mood});

  final Mood mood;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        addEditMoodBottomSheet(context);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(mood.moodEmoji!, style: TextStyle(fontSize: 32)),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mood.moodNote ?? ''),
                      SizedBox(height: 8),
                      Text(
                        mood.formattedDate,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//here is a mood class example for mood item
// Mood(
//       date: DateTime.now(),
//       moodNote: 'Here is note1',
//       moodCategory: MoodCategory.amazing,
//     ),
