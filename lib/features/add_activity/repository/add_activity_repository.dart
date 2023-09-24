// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:activities_time_tracker/isar_service.dart';
import 'package:activities_time_tracker/models/activity_model.dart';
import 'package:activities_time_tracker/models/tasks_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

final addActivityRepositoryProvider = Provider((ref) {
  final isarService = ref.watch(isarServiceProvider);
  return AddActivityRepository(isar: isarService.db);
});

class AddActivityRepository {
  final Future<Isar> isar;

  AddActivityRepository({
    required this.isar,
  });

  void saveActivity(Activity newActivity) async {
    final isarInstance = await isar;
    //fai cose
  }

  void saveTask(String task) async {
    final isarInstance = await isar;
    final Task newTask = Task(task: task);
    await isarInstance.writeTxn(() async {
      await isarInstance.tasks.put(newTask);
    });
  }

  Future<List<Task>> getTasks() async {
    final isarInstance = await isar;
    return await isarInstance.tasks.where().findAll();
  }
}
