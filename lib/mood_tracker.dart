import 'package:flutter/material.dart';

import 'package:mood_tracker_app_ftmnr/widgets/mood_tracker_screen/mood_tracker_screen.dart';

class MoodTracker extends StatefulWidget {
  const MoodTracker({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MoodTrackerState();
  }
}

class _MoodTrackerState extends State<MoodTracker> {
  Widget activeScreen = MoodTrackerScreen();

  @override
  Widget build(BuildContext context) {
    return activeScreen;
  }
}
