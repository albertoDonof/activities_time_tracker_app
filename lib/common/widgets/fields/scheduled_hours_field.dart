import 'package:activities_time_tracker/common/widgets/fields/hours_field.dart';
import 'package:flutter/material.dart';

class ScheduledHoursField extends HoursField {
  ScheduledHoursField(
      {required super.onHoursSubmitted,
      required super.onMinutesSubmitted,
      required super.id,
      required super.title});
}
