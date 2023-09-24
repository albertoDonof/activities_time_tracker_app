// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:activities_time_tracker/features/add_activity/widgets/add_activity_body.dart';
import 'package:activities_time_tracker/isar_service.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:activities_time_tracker/utils/size_config.dart';
import 'package:activities_time_tracker/utils/spacings.dart';

class ChangeHoursCard extends ConsumerStatefulWidget {
  final int id;
  final HoursCallback onHoursSubmitted;
  const ChangeHoursCard({
    super.key,
    required this.id,
    required this.onHoursSubmitted,
  });

  @override
  ConsumerState<ChangeHoursCard> createState() => _ChangeHoursCardState();
}

final hoursValueProvider =
    StateProvider.autoDispose.family<int, int>((ref, id) => 0);

class _ChangeHoursCardState extends ConsumerState<ChangeHoursCard> {
  final formatter = NumberFormat("00");

  @override
  Widget build(BuildContext context) {
    int hoursValue = ref.watch(hoursValueProvider(widget.id));
    return FormField(
      validator: (value) {
        widget.onHoursSubmitted(hoursValue);
      },
      builder: (field) {
        return Container(
          width: 60,
          decoration: const BoxDecoration(
            color: secondaryBackColor,
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topCenter,
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: principalColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    ),
                  ),
                  child: IconButton(
                      iconSize: 22,
                      onPressed: () {
                        if (hoursValue < 999) {
                          ref
                              .read(hoursValueProvider(widget.id).notifier)
                              .state++;
                        }
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 16.0),
                  child: Text(
                    formatter.format(hoursValue),
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Container(
                  height: 35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: principalColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: IconButton(
                    iconSize: 22,
                    onPressed: () {
                      if (hoursValue > 0) {
                        ref
                            .read(hoursValueProvider(widget.id).notifier)
                            .state--;
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
