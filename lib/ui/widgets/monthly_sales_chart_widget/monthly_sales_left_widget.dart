import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlySalesLeftWidget extends StatelessWidget {
  const MonthlySalesLeftWidget(
      {super.key, required this.value, required this.meta});

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
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
}
