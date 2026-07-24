import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/moods_list/mood_item.dart';

class MoodsList extends StatelessWidget {
  const MoodsList({super.key, required this.moods});

  final List<Mood> moods;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //kalan alanın en fazlasını alması için
      child: ListView.builder(
        itemCount: moods.length,
        itemBuilder: (ctx, index) {
          return MoodItem(mood: moods[index]);
        },
      ),
    );
  }
}
