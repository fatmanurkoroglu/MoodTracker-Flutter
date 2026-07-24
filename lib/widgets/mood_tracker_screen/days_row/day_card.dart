import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key, required this.date, required this.dayName});

  final String date;
  final String dayName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 4),

      //TODO: make this cards pressable somehow and it should lead to chosen days' moods screen.
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              date,
              style: TextStyle(
                color: Colors.black87,
                height: 1.1,
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              dayName,
              style: TextStyle(fontSize: 12, height: 1, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
