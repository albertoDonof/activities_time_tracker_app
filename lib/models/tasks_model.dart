// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'tasks_model.g.dart';

@collection
class Task {
  Id id = Isar.autoIncrement;

  String task;

  Task({
    required this.task,
  });
}
