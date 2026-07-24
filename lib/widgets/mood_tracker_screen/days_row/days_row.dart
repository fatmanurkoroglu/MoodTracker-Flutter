import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/models/mood.dart';
import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/days_row/day_card.dart';

class DaysRow extends StatelessWidget {
  DaysRow({super.key, required this.moods});

  final List<Mood> moods;
  final today = DateTime.now();

  final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 388,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 21,
              itemBuilder: (context, index) {
                var day = today.subtract(Duration(days: index)).day;
                var dayNameIndex = today
                    .subtract(Duration(days: index))
                    .weekday;

                return DayCard(
                  date: day.toString(),
                  dayName: weekDays[dayNameIndex - 1],
                );
              },
              scrollDirection: Axis.horizontal,
              reverse: true,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.date_range_sharp, size: 32),
          ),
        ],
      ),
    );
  }
}
