// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:activities_time_tracker/common/widgets/dialogs/task_dialog.dart';
import 'package:activities_time_tracker/common/widgets/error.dart';
import 'package:activities_time_tracker/features/add_activity/controller/add_activity_controller.dart';
import 'package:flutter/material.dart';

import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskField extends ConsumerStatefulWidget {
  final StringCallback onDropdownSubmitted;
  const TaskField({
    Key? key,
    required this.onDropdownSubmitted,
  }) : super(key: key);

  @override
  ConsumerState<TaskField> createState() => _TaskFieldState();
}

class _TaskFieldState extends ConsumerState<TaskField> {
  String dropdownValue = "ciao";

  void dropdownCallback(String? value) {
    if (value is String) {
      setState(() {
        dropdownValue = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(tasksProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 2, left: 6),
          child: Text(
            'Task',
            style: TextStyle(fontSize: 16),
          ),
        ),
        tasks.when(
          error: (Object error, StackTrace stackTrace) {
            return ErrorScreen(error: error.toString());
          },
          loading: () => const Text('caricamento'),
          data: (tasksList) => DropdownButtonFormField(
            items: List.generate(
              tasksList.length,
              (index) => DropdownMenuItem<String>(
                child: Text(tasksList[index].task),
                value: tasksList[index].task,
              ),
            ),
            value: tasksList.isNotEmpty ? tasksList.first.task : null,
            onChanged: dropdownCallback,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter the task of the Activity';
              }
              widget.onDropdownSubmitted(value);
              return null;
            },
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: principalColor,
                    foregroundColor: accentColorLight,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(12),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () => {},
                  child: Text(
                    'Add Task',
                  ),
                ),
              ),
              suffixIconConstraints: BoxConstraints(minHeight: 20),
              hintText: 'Task of the Activity',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              filled: true,
              fillColor: secondaryBackColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: principalColorLight, width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                borderSide: BorderSide(color: accentColor),
              ),
              contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
        ),
      ],
    );
  }
}
