import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';
import 'package:flutter/material.dart';

class AddTaskBody extends StatelessWidget {
  const AddTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (paddingTotaleSchermate + paddingLateraleSchermate) *
                SizeConfig.safeBlockHorizontal,
            vertical: paddingTotaleSchermate * SizeConfig.safeBlockHorizontal),
        child: Column(),
      ),
    );
  }
}
