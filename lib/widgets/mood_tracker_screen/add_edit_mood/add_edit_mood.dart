import 'package:flutter/material.dart';
import 'package:mood_tracker_app_ftmnr/models/mood.dart';

void addEditMoodBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: bu dropdown menuyu stille
          DropdownButtonFormField(
            hint: const Text('mood'),
            items: [],
            onChanged: (ctx) {},
          ),

          Text('mood note entry'),

          Expanded(
            child: Row(
              children: [
                Text('date'),
                ElevatedButton(onPressed: () {}, child: Text('cancel')),
                ElevatedButton(onPressed: () {}, child: Text('submit')),
              ],
            ),
          ),
        ],
      );
    },
  );
}
