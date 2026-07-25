import 'package:flutter/material.dart';
import 'package:mood_tracker_app_ftmnr/models/mood.dart';

void addEditMoodBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(16, 64, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButtonFormField(
              hint: const Text('How do you feel?'),
              items: [],
              onChanged: (ctx) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 48),

            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('No date selected'),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.date_range_outlined),
                    ),
                  ],
                ),

                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('cancel')),
                    ElevatedButton(onPressed: () {}, child: Text('submit')),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
