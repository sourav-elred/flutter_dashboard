import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartOrderBottomTitleWidget extends StatelessWidget {
  const ChartOrderBottomTitleWidget({
    super.key,
    required this.value,
    required this.meta,
  });

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
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

    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }
}
