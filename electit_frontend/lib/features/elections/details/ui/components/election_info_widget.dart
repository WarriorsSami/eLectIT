import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/extensions/primitives_extensions.dart';
import 'package:electit_frontend/features/shared/ui/components/app_text_field.dart';
import 'package:flutter/material.dart';

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
          child: AppTextField(
            label: 'Description: ',
            text: description,
            isTextArea: true,
          ),
        ),
      ],
    );
  }
}
