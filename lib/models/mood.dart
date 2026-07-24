import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

enum MoodCategory { amazing, good, neutral, bad, horriable }

const moodIcons = {
  MoodCategory.amazing: '😁',
  MoodCategory.good: '😊',
  MoodCategory.neutral: '😐',
  MoodCategory.bad: '😔',
  MoodCategory.horriable: '😭',
};

class Mood {
  Mood({required this.date, this.moodNote, required this.moodCategory})
    : moodEmoji = moodIcons[moodCategory];

  String? moodNote;
  DateTime date;
  MoodCategory moodCategory;
  String? moodEmoji;

  String get formattedDate {
    return formatter.format(date);
  }
}
