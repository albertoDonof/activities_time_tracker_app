import 'package:flutter/material.dart';

Future<void> taskDialogBuilder(BuildContext context) {
  return showDialog(
      useSafeArea: true,
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Add Task'),
          children: [
            TextField(),
            SimpleDialogOption(),
            SimpleDialogOption(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
          ],
        );
      });
}
