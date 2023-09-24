import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:flutter/material.dart';

class SingleDayHoursBar extends StatelessWidget {
  final int day;
  final int hoursDone;
  const SingleDayHoursBar({
    Key? key,
    required this.day,
    required this.hoursDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 5.73 * SizeConfig.safeBlockHorizontal,
          child: Text(
            '$hoursDone' 'hr',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.fade,
            softWrap: false,
          ),
        ),
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: secondaryBackColor,
              ),
              width: 10.4167 * SizeConfig.safeBlockHorizontal,
              height: 12 * SizeConfig.safeBlockVertical,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: principalColor,
              ),
              width: 10.4167 * SizeConfig.safeBlockHorizontal,
              height: 8 * SizeConfig.safeBlockVertical,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: convertDaytoText(day),
        ),
      ],
    );
  }

  Text convertDaytoText(int day) {
    switch (day) {
      case 0:
        return const Text('Mon');
      case 1:
        return const Text('Tue');
      case 2:
        return const Text('Wed');
      case 3:
        return const Text('Thu');
      case 4:
        return const Text('Fri');
      case 5:
        return const Text('Sat');
      case 6:
        return const Text('Sun');
      default:
        return const Text('Day');
    }
  }
}
