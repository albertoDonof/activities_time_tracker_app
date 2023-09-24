// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';

class DateField extends StatefulWidget {
  final DateTimeCallback onDateSubmitted;
  const DateField({
    Key? key,
    required this.onDateSubmitted,
  }) : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  TextEditingController dateController = TextEditingController();
  late DateTime dateTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = DateTime.now();
    dateController = TextEditingController(text: dateTime.toString());
  }

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
            'Date',
            style: TextStyle(fontSize: 16),
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter the date of the Activity';
            }
            widget.onDateSubmitted(dateTime);
            return null;
          },
          decoration: InputDecoration(
            isCollapsed: true,
            hintText: 'Date',
            suffix: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: principalColor,
                foregroundColor: accentColorLight,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                minimumSize: Size.zero,
                padding: const EdgeInsets.all(12),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                setState(() {
                  DatePicker.showDateTimePicker(
                    context,
                    onConfirm: (date) {
                      setState(() {
                        dateTime = date;
                        dateController.text = date.toString();
                      });
                    },
                  );
                });
              },
              child: const Text('Change'),
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
