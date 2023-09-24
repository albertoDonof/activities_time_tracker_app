import 'package:activities_time_tracker/common/widgets/cards/completed_activity_card.dart';
import 'package:activities_time_tracker/common/widgets/cards/current_activity_card.dart';
import 'package:activities_time_tracker/features/add_activity/add_activity_page.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';
import 'package:flutter/material.dart';

class RecentActivitiesSection extends StatelessWidget {
  const RecentActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              paddingLateraleSchermate * SizeConfig.safeBlockHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Activities',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: accentColor,
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.only(
                      left: 6, right: 6, bottom: 2, top: 10),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, AddActivityPage.routeName);
                },
                child: const Text('Add Activity'),
              ),
            ],
          ),
          SizedBox(
              height: spazioTitoloContenuto * SizeConfig.safeBlockVertical),
          const CurrentActivityCard(),
          const CurrentActivityCard(),
          const CompletedActivityCard(),
        ],
      ),
    );
  }
}
