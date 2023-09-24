import 'package:activities_time_tracker/common/widgets/fields/date_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/deadline_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/name_text_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/payment_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/scheduled_hours_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/spent_hours_field.dart';
import 'package:activities_time_tracker/common/widgets/fields/task_field.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';
import 'package:flutter/material.dart';

typedef StringCallback = void Function(String name);
typedef DateTimeCallback = void Function(DateTime date);
typedef DoubleCallback = void Function(double payment);
typedef HoursCallback = void Function(int hours);
typedef MinutesCallback = void Function(int minutes);

class AddActivityBody extends StatefulWidget {
  const AddActivityBody({
    Key? key,
  }) : super(key: key);

  @override
  State<AddActivityBody> createState() => _AddActivityBodyState();
}

class _AddActivityBodyState extends State<AddActivityBody> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  late DateTime date;
  late String task;
  late double payment;
  DateTime? deadline;
  int scheduledHours = 0;
  int scheduledMinutes = 0;
  int spentHours = 0;
  int spentMinutes = 0;

  void updateName(String newName) {
    name = newName;
  }

  void updateDateTime(DateTime newDate) {
    date = newDate;
  }

  void updateTask(String newTask) {
    task = newTask;
  }

  void updatePayment(double newPayment) {
    payment = newPayment;
  }

  void updateDeadline(DateTime newDeadline) {
    deadline = newDeadline;
  }

  void updateScheduledHours(int hours) {
    scheduledHours = hours;
  }

  void updateScheduledMinutes(int minutes) {
    scheduledMinutes = minutes;
  }

  void updateSpentHours(int hours) {
    spentHours = hours;
  }

  void updateSpentMinutes(int minutes) {
    spentMinutes = minutes;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (paddingTotaleSchermate + paddingLateraleSchermate) *
                SizeConfig.safeBlockHorizontal,
            vertical: paddingTotaleSchermate * SizeConfig.safeBlockHorizontal),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              NameTextField(
                onTextSubmitted: (newname) {
                  updateName(newname);
                },
              ),
              SizedBox(height: paddingFields * SizeConfig.blockSizeVertical),
              DateField(
                onDateSubmitted: (date) {
                  updateDateTime(date);
                },
              ),
              SizedBox(height: paddingFields * SizeConfig.blockSizeVertical),
              TaskField(
                onDropdownSubmitted: (task) {
                  updateTask(task);
                },
              ),
              SizedBox(height: paddingFields * SizeConfig.blockSizeVertical),
              PaymentTextField(
                onPaymentSubmitted: (payment) {
                  updatePayment(payment);
                },
              ),
              SizedBox(height: paddingFields * SizeConfig.blockSizeVertical),
              DeadlineField(
                onDeadlineSubmitted: (date) {
                  updateDeadline(date);
                },
              ),
              SizedBox(height: 2.388 * SizeConfig.blockSizeVertical),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ScheduledHoursField(
                      id: 0,
                      title: 'Scheduled Hours',
                      onHoursSubmitted: (int hours) {
                        updateScheduledHours(hours);
                      },
                      onMinutesSubmitted: (minutes) {
                        updateScheduledMinutes(minutes);
                      },
                    ),
                  ),
                  Expanded(
                    child: SpentHoursField(
                      id: 1,
                      title: 'Hours Spent',
                      onHoursSubmitted: (hours) {
                        updateSpentHours(hours);
                      },
                      onMinutesSubmitted: (minutes) {
                        updateSpentMinutes(minutes);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.5 * SizeConfig.blockSizeVertical),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //salva su isar
                    if (deadline != null) {
                      print(deadline);
                    }
                    print('$spentHours $spentMinutes');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonBackColor2,
                  foregroundColor: buttonTextColor2,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: const Text(
                  'Add Activity',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
