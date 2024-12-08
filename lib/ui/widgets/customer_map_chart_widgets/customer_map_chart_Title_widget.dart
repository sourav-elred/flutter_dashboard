import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomerMapChartTitleWidget extends StatelessWidget {
  const CustomerMapChartTitleWidget(
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
    List<String> days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    Widget text = Text(days[value.toInt()], style: style);

    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }
}
