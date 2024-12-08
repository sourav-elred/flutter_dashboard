import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWithTitle extends StatelessWidget {
  const PieChartWithTitle({
    super.key,
    this.value,
    required this.title,
    required this.color,
    required this.remainingTileColor,
  });

  final int? value;
  final String title;
  final Color color;
  final Color remainingTileColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  startDegreeOffset: 270,
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: [
                    PieChartSectionData(
                      value: value?.toDouble() ?? 0,
                      color: color,
                      showTitle: false,
                      radius: 25,
                    ),
                    PieChartSectionData(
                      value: value != null ? 100 - value!.toDouble() : 100,
                      color: remainingTileColor,
                      showTitle: false,
                      radius: 25,
                    ),
                  ],
                ),
              ),
              if (value != null)
                Text(
                  '$value%',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF464255),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF464255),
          ),
        ),
      ],
    );
  }
}
