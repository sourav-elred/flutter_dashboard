
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlySalesBottomTitleWidgets extends StatelessWidget {
  const MonthlySalesBottomTitleWidgets(
      {super.key, required this.value, required this.meta});

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
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
}
