import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomerMapChartLefttitleWidget extends StatelessWidget {
  const CustomerMapChartLefttitleWidget(
      {super.key, required this.value, required this.meta});

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      color: Color(0xFFA3A3A3),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );

    Widget text = const Text('0', style: style);

    return SideTitleWidget(axisSide: meta.axisSide, space: 16, child: text);
  }
}
