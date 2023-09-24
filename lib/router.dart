import 'package:activities_time_tracker/common/widgets/error.dart';
import 'package:activities_time_tracker/features/add_activity/add_activity_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AddActivityPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const AddActivityPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn\'t exist'),
        ),
      );
  }
}
