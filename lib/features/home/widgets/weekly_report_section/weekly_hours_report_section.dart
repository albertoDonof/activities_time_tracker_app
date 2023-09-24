import 'package:activities_time_tracker/features/home/widgets/weekly_report_section/single_day_hours_bar.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';
import 'package:flutter/material.dart';

class WeeklyHoursReportSection extends StatelessWidget {
  const WeeklyHoursReportSection({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingLateraleSchermate * SizeConfig.safeBlockHorizontal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Weekly Hour Report',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: spazioTitoloContenuto * SizeConfig.safeBlockVertical,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 2),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 2),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 2),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 2),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 123),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 12),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SingleDayHoursBar(day: 0, hoursDone: 2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
