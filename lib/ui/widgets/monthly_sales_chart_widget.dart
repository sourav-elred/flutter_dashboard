import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

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
            const Row(
              children: [
                Text(
                  'Total Revenue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF464255),
                    height: 20 / 18,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xff2D9CDB),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '2020',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA3A3A3),
                        height: 23 / 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xffFF5B5B),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '2021',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA3A3A3),
                        height: 23 / 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            AspectRatio(
              // height: 350,
              aspectRatio: 2.2,
              child: LineChart(
                LineChartData(
                  lineTouchData: lineTouchData1,
                  gridData: gridData,
                  titlesData: titlesData1,
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

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
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

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFFA3A3A3));
    String text;
    switch (value.toInt()) {
      case 1:
        text = '\$10k';
        break;
      case 2:
        text = '\$20k';
        break;
      case 3:
        text = '\$30k';
        break;
      case 4:
        text = '\$40k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Color(0xFFA3A3A3),
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Jan', style: style),
          ],
        );
        break;
      case 2:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Feb', style: style),
          ],
        );
        break;
      case 3:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Mar', style: style),
          ],
        );
        break;
      case 4:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Apr', style: style),
          ],
        );
        break;
      case 5:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('May', style: style),
          ],
        );
        break;
      case 6:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Jun', style: style),
          ],
        );
        break;
      case 7:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Jul', style: style),
          ],
        );
        break;
      case 8:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Aug', style: style),
          ],
        );
        break;
      case 9:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Sep', style: style),
          ],
        );
        break;
      case 10:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Oct', style: style),
          ],
        );
        break;
      case 11:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Nov', style: style),
          ],
        );
        break;
      case 12:
        text = Column(
          children: [
            Container(
              height: 9,
              width: 9,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffB9BBBD)),
              ),
            ),
            const SizedBox(height: 6),
            const Text('Dec', style: style),
          ],
        );
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 50,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
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
