// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:activities_time_tracker/features/add_activity/repository/add_activity_repository.dart';
import 'package:activities_time_tracker/models/tasks_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addActivityControllerProvider = Provider((ref) {
  final addActivityRepository = ref.watch(addActivityRepositoryProvider);
  return AddActivityController(addActivityRepository: addActivityRepository);
});

final tasksProvider = FutureProvider((ref) {
  final addActivityController = ref.watch(addActivityControllerProvider);
  return addActivityController.getTasks();
});

class AddActivityController {
  final AddActivityRepository addActivityRepository;

  AddActivityController({
    required this.addActivityRepository,
  });

  Future<List<Task>> getTasks() async {
    List<Task> tasks = await addActivityRepository.getTasks();
    return tasks;
  }
}
