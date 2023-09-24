// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';

class DeadlineField extends StatefulWidget {
  final DateTimeCallback onDeadlineSubmitted;
  const DeadlineField({
    Key? key,
    required this.onDeadlineSubmitted,
  }) : super(key: key);

  @override
  State<DeadlineField> createState() => _DeadlineFieldState();
}

class _DeadlineFieldState extends State<DeadlineField> {
  TextEditingController dateController = TextEditingController();
  DateTime? deadline;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 2, left: 6),
          child: Text(
            'Deadline',
            style: TextStyle(fontSize: 16),
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return null;
            }
            widget.onDeadlineSubmitted(deadline!);
            return null;
          },
          decoration: InputDecoration(
            hintText: 'No Deadline',
            suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: principalColor,
                  foregroundColor: accentColorLight,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                  padding: const EdgeInsets.all(12),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  setState(() {
                    DatePicker.showDateTimePicker(
                      context,
                      onConfirm: (date) {
                        setState(() {
                          deadline = date;
                          dateController.text = date.toString();
                        });
                      },
                    );
                  });
                },
                child: const Text('Change'),
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            filled: true,
            fillColor: secondaryBackColor,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: principalColorLight, width: 2),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(color: accentColor),
            ),
            contentPadding: const EdgeInsets.fromLTRB(12, 3.5, 4, 3.5),
          ),
          controller: dateController,
          readOnly: true,
        ),
      ],
    );
  }
}
