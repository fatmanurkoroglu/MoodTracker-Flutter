enum MoodCategory { amazing, good, neutral, bad, horriable }

class Mood {
  Mood({
    required this.date,
    required this.moodNote,
    required this.moodCategory,
  });

  String moodNote;
  DateTime date;
  MoodCategory moodCategory;
}
