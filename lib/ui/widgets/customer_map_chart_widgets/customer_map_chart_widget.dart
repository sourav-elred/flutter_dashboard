import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_map_chart_Title_widget.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_map_chart_heading_widget.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_map_chart_left_title_widget.dart';

class CustomerMapChartWidget extends StatelessWidget {
  const CustomerMapChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            const CustomerMapChartHeadingWidget(),
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 1,
              child: Expanded(child: BarChart(randomData())),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: x % 2 == 0 ? const Color(0xffFF5B5B) : const Color(0xffF7C604),
          borderRadius: BorderRadius.zero,
          width: 22,
        ),
      ],
    );
  }

  BarChartData randomData() {
    return BarChartData(
      maxY: 300.0,
      barTouchData: BarTouchData(enabled: false),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) =>
                CustomerMapChartTitleWidget(value: value, meta: meta),
            reservedSize: 38,
          ),
        ),
        leftTitles: AxisTitles(
          axisNameSize: 5,
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) =>
                CustomerMapChartLefttitleWidget(value: value, meta: meta),
            reservedSize: 30,
          ),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      borderData: FlBorderData(show: false),
      barGroups: List.generate(
        7,
        (i) => makeGroupData(
          i,
          Random().nextInt(290).toDouble() + 10,
        ),
      ),
      gridData: const FlGridData(show: false),
    );
  }
}
