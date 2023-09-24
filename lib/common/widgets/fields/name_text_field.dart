// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:flutter/material.dart';

import 'package:activities_time_tracker/utils/colors.dart';

class NameTextField extends StatefulWidget {
  final StringCallback onTextSubmitted;
  const NameTextField({
    Key? key,
    required this.onTextSubmitted,
  }) : super(key: key);

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 2, left: 6),
          child: Text(
            'Name',
            style: TextStyle(fontSize: 16),
          ),
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter the name of the Activity';
            }
            widget.onTextSubmitted(value);
            return null;
          },
          controller: nameController,
          decoration: const InputDecoration(
            hintText: 'Name of the Activity',
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
            errorStyle: TextStyle(height: 0.4),
            contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          ),
          cursorColor: accentColor,
        ),
      ],
    );
  }
}
