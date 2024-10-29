import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ChartOrderWidget extends StatelessWidget {
  const ChartOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    final horizontalPadding = isDesktop ? 40.0 : (isTablet ? 30.0 : 20.0);
    final verticalPadding = isDesktop ? 25.0 : (isTablet ? 20.0 : 15.0);
    final titleFontSize = isDesktop ? 22.0 : (isTablet ? 20.0 : 18.0);
    final subtitleFontSize = isDesktop ? 16.0 : (isTablet ? 14.0 : 12.0);
    final buttonFontSize = isDesktop ? 20.0 : (isTablet ? 18.0 : 16.0);
    final chartAspectRatio = isDesktop ? 4.0 : (isTablet ? 3.5 : 3.0);

    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: SizedBox(
          height: 240,
          child: Column(
            children: [
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                rowPadding: const EdgeInsets.only(bottom: 20),
                columnPadding: const EdgeInsets.only(bottom: 20),
                layout: ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chart Order',
                          style: TextStyle(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF464255),
                            height: 20 / 18,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adip',
                          style: TextStyle(
                            fontSize: subtitleFontSize,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFB9BBBD),
                            height: 14 / 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding * 0.8,
                        vertical: verticalPadding * 0.4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color(0xFF2D9CDB),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.download_outlined,
                            color: const Color(0xFF2D9CDB),
                            size: buttonFontSize * 1.5,
                          ),
                          SizedBox(width: isDesktop ? 6 : 0),
                          Visibility(
                            visible: isDesktop,
                            child: Text(
                              'Save Report',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF2D9CDB),
                                height: 16 / 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              AspectRatio(
                aspectRatio: chartAspectRatio,
                child: LineChart(mainData(isDesktop)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  LineChartData mainData(bool isDesktop) {
    return LineChartData(
      borderData: FlBorderData(show: false),
      gridData: const FlGridData(show: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: isDesktop
              ? SideTitles(
                  showTitles: true,
                  reservedSize: 35,
                  interval: 1,
                  getTitlesWidget: bottomTitleWidgets,
                )
              : const SideTitles(showTitles: false),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          // gradient: LinearGradient(
          //   colors: gradientColors,
          // ),
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF6EC8EF), Colors.white],
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Color(0xFF464255),
      height: 18 / 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Sunday', style: style);
        break;
      case 3:
        text = const Text('Monday', style: style);
        break;
      case 5:
        text = const Text('Tuesday', style: style);
        break;
      case 7:
        text = const Text('Wednesday', style: style);
        break;
      case 9:
        text = const Text('Thursday', style: style);
        break;
      case 11:
        text = const Text('Friday', style: style);
        break;
      case 13:
        text = const Text('Saturday', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
