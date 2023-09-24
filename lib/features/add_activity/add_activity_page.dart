import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddActivityPage extends StatelessWidget {
  static const String routeName = '/add-activity';
  const AddActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Add Activity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: const AddActivityBody(),
    );
  }
}
