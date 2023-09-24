// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:activities_time_tracker/common/widgets/cards/change_hour_card.dart';
import 'package:activities_time_tracker/common/widgets/cards/change_minutes_card.dart';
import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';

class HoursField extends StatelessWidget {
  final String title;
  final int id;
  final HoursCallback onHoursSubmitted;
  final MinutesCallback onMinutesSubmitted;
  // ignore: use_key_in_widget_constructors
  const HoursField({
    required this.title,
    required this.id,
    required this.onHoursSubmitted,
    required this.onMinutesSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: listCardColor2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(title),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ChangeHoursCard(
                      id: id,
                      onHoursSubmitted: (int hours) {
                        onHoursSubmitted(hours);
                      },
                    ),
                    Text('Hours'),
                  ],
                ),
                Text(
                  ':',
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [
                    ChangeMinutesCard(
                      id: id,
                      onMinutesCallback: (minutes) {
                        onMinutesSubmitted(minutes);
                      },
                    ),
                    Text('Minutes'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
