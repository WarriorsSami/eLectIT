import 'package:electit_frontend/features/shared/domain/entities/election_statistics.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ElectionStatisticsWidget extends StatefulWidget {
  final ElectionStatistics statistics;

  const ElectionStatisticsWidget({
    required this.statistics,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ElectionStatisticsState();
}

class ElectionStatisticsState extends State<ElectionStatisticsWidget> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<Color> _getRandomDifferentColors(int count) {
    final colors = <Color>[];
    for (var i = 0; i < count; i++) {
      colors.add(Colors.primaries[i % Colors.primaries.length]);
    }
    return colors;
  }

  List<PieChartSectionData> showingSections() {
    final colors =
        _getRandomDifferentColors(widget.statistics.candidates.length);

    return List.generate(
      widget.statistics.candidates.length,
      (i) {
        final isTouched = i == touchedIndex;
        final fontSize = isTouched ? 20.0 : 16.0;
        final radius = isTouched ? 110.0 : 100.0;
        final widgetSize = isTouched ? 100.0 : 90.0;
        const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

        final candidate = widget.statistics.candidates[i];
        final votePercentage =
            candidate.votesCount / widget.statistics.votesCount * 100;

        return PieChartSectionData(
          color: colors[i],
          value: votePercentage,
          title: '${votePercentage.toStringAsFixed(2)}%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
            shadows: shadows,
          ),
          badgeWidget: _Badge(
            candidateName: candidate.name,
            size: widgetSize,
            borderColor: Colors.black,
          ),
          badgePositionPercentageOffset: .98,
        );
      },
    );
  }
}

class _Badge extends StatelessWidget {
  final String candidateName;
  final double size;
  final Color borderColor;

  const _Badge({
    required this.candidateName,
    required this.size,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: Text(
          candidateName,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
