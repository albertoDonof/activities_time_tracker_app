import 'package:activities_time_tracker/features/home/widgets/recent_activities_section.dart';
import 'package:activities_time_tracker/features/home/widgets/weekly_report_section/weekly_hours_report_section.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(
          paddingTotaleSchermate * SizeConfig.safeBlockHorizontal),
      child: Column(
        children: const [
          RecentActivitiesSection(),
          WeeklyHoursReportSection(),
        ],
      ),
    );
  }
}
