// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:activities_time_tracker/models/tasks_model.dart';
import 'package:isar/isar.dart';

part 'activity_model.g.dart';

@collection
class Activity {
  Id id = Isar.autoIncrement;

  String name;

  DateTime dateTime;

  final task = IsarLink<Task>();

  bool completed;

  double? payment;

  DateTime? deadine;

  int scheduledHours;
  int scheduledMinutes;

  int spentHours;
  int spentMinutes;

  Activity({
    required this.name,
    required this.dateTime,
    required this.scheduledHours,
    required this.scheduledMinutes,
    this.payment,
    this.deadine,
    required this.spentHours,
    required this.spentMinutes,
    this.completed = false,
  });
}
