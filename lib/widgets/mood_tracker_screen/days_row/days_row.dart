import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/days_row/day_card.dart';

class DaysRow extends StatelessWidget {
  const DaysRow({super.key, required this.moods});

  final List<Mood> moods;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 388,
      child: ListView.builder(
        itemCount: moods.length,
        itemBuilder: (context, index) => DayCard(),
        scrollDirection: Axis.horizontal,
        reverse: true,
      ),
    );
  }
}
