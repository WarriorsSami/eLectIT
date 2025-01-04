import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:electit_frontend/features/shared/ui/components/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class ElectionInfoWidget extends StatelessWidget {
  final String title;
  final String description;
  final int startTimestamp;
  final int endTimestamp;

  const ElectionInfoWidget({
    required this.title,
    required this.description,
    required this.startTimestamp,
    required this.endTimestamp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Row(
            children: [
              Flexible(
                child: AppTextField(
                  label: 'Title: ',
                  text: title,
                  isTextArea: true,
                ),
              ),
              Flexible(
                child: AppTextField(
                  label: 'Start: ',
                  text: startTimestamp.toDateTimeString(),
                ),
              ),
              Flexible(
                child: AppTextField(
                  label: 'End: ',
                  text: endTimestamp.toDateTimeString(),
                ),
              ),
            ],
          ),
        ),
        smallVerticalSpace,
        Flexible(
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: AppTextField(
                  label: 'Description: ',
                  text: description,
                  isTextArea: true,
                ),
              ),
              Flexible(
                child: DateTime.now().isBefore(startTimestamp.toDateTime())
                    ? Text(
                        'Upcoming',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize:
                              Theme.of(context).textTheme.titleMedium!.fontSize,
                        ),
                      )
                    : DateTime.now().isBefore(endTimestamp.toDateTime())
                        ? TimerCountdown(
                            format:
                                CountDownTimerFormat.daysHoursMinutesSeconds,
                            endTime: endTimestamp.toDateTime(),
                            colonsTextStyle: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                            ),
                            timeTextStyle: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                            ),
                            descriptionTextStyle: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        : Text(
                            'Finished',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .fontSize,
                            ),
                          ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
