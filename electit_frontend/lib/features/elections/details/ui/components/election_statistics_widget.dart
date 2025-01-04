import 'package:electit_frontend/features/elections/details/ui/components/election_statistics_bar_chart.dart';
import 'package:electit_frontend/features/elections/details/ui/components/election_statistics_pie_chart.dart';
import 'package:electit_frontend/features/shared/config/constants.dart';
import 'package:electit_frontend/features/shared/domain/entities/election_statistics.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ElectionStatisticsWidget extends StatefulWidget {
  final ElectionStatistics statistics;

  const ElectionStatisticsWidget({
    required this.statistics,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _ElectionStatisticsState();
}

class _ElectionStatisticsState extends State<ElectionStatisticsWidget> {
  int selectedChartIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ToggleSwitch(
            isVertical: true,
            minWidth: 120.0,
            initialLabelIndex: selectedChartIndex,
            cornerRadius: 20.0,
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            totalSwitches: 2,
            labels: ['Pie chart', 'Bar chart'],
            icons: [Icons.pie_chart, Icons.bar_chart],
            activeBgColors: [
              [Colors.blue],
              [Colors.blue],
            ],
            onToggle: (index) {
              setState(() {
                selectedChartIndex = index!;
              });
            },
          ),
        ),
        smallHorizontalSpace,
        Flexible(
          child: switch (selectedChartIndex) {
            0 => ElectionStatisticsPieChart(statistics: widget.statistics),
            _ => ElectionStatisticsBarChart(statistics: widget.statistics),
          },
        ),
      ],
    );
  }
}
