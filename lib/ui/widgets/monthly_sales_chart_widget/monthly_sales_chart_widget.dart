import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget/monthly_sales_bottom_title_widgets.dart';
import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget/monthly_sales_chart_heading_widget.dart';
import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget/monthly_sales_left_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MonthlySalesChartWidget extends StatelessWidget {
  const MonthlySalesChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            const MonthlySalesChartHeading(),
            const SizedBox(height: 30),
            AspectRatio(
              // height: 350,
              aspectRatio: 2.2,
              child: LineChart(
                LineChartData(
                  lineTouchData: lineTouchData1,
                  gridData: gridData,
                  titlesData: titlesData1(context),
                  borderData: borderData,
                  lineBarsData: lineBarsData1,
                  minX: 0,
                  maxX: 14,
                  maxY: 4,
                  minY: 0,
                ),
                duration: const Duration(milliseconds: 250),
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.grey.withOpacity(0.8),
        ),
      );

  FlTitlesData titlesData1(BuildContext context) => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles(context),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: (value, meta) => MonthlySalesLeftWidget(
          value: value,
          meta: meta,
        ),
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  SideTitles bottomTitles(BuildContext context) => SideTitles(
        showTitles: ResponsiveBreakpoints.of(context).isDesktop ? true : false,
        reservedSize: 50,
        interval: 1,
        getTitlesWidget: (value, meta) => MonthlySalesBottomTitleWidgets(
          value: value,
          meta: meta,
        ),
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.transparent),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0xFFFF5B5B),
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xFF2D9CDB),
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          // color: AppColors.contentColorPink.withOpacity(0),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );
}
