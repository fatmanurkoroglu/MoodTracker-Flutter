import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 4),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.lightBlueAccent,
        child: Text('Pt', style: TextStyle(color: Colors.black87)),
      ),
    );
  }
}
