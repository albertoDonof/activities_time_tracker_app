import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:flutter/material.dart';

class CurrentActivityCard extends StatelessWidget {
  const CurrentActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      margin: EdgeInsets.only(bottom: 1.8 * SizeConfig.safeBlockVertical),
      color: listCardColor1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.9 * SizeConfig.safeBlockVertical,
            horizontal: 5.21 * SizeConfig.safeBlockHorizontal,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Lavoro fiverr 1',
                    style: TextStyle(fontSize: 20, color: textCardMain1),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Time left: 2hr 15min',
                    style: TextStyle(color: textCardSecondary1),
                  ),
                  Text(
                    ' 4 days remaining',
                    style: TextStyle(color: textCardSecondary1),
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    'Created in:',
                    style: TextStyle(color: textCardSecondary1),
                  ),
                  Text(
                    '20/10/2022',
                    style: TextStyle(color: textCardMain1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
