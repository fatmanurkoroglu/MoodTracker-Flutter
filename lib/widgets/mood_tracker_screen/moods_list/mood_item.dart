import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';

class MoodItem extends StatelessWidget {
  const MoodItem({super.key, required this.mood});

  final Mood mood;

  @override
  Widget build(BuildContext context) {
    return Card(child: Text('This is a mood item'));
  }
}
