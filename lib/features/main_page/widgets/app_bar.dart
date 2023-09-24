import 'dart:async';

import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  Timer? myTimer;
  String dateTime = '';
  String hourMinutes = '';

  @override
  void initState() {
    DateTime dateNow = DateTime.now();
    dateTime = DateFormat('d MMMM yyyy ss').format(dateNow);
    hourMinutes = DateFormat('hh:mm').format(dateNow);
    myTimer = Timer.periodic(const Duration(seconds: 60), (timer) {
      setState(() {
        DateTime dateNow = DateTime.now();
        dateTime = DateFormat('d MMMM yyyy').format(dateNow);
        hourMinutes = DateFormat('hh:mm').format(dateNow);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    myTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          dateTime,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        SizedBox(
          width: 27 * SizeConfig.safeBlockHorizontal,
          child: Center(
            child: Text(
              hourMinutes,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
