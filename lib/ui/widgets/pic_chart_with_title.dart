import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWithTitle extends StatefulWidget {
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
  State<PieChartWithTitle> createState() => _PieChartWithTitleState();
}

class _PieChartWithTitleState extends State<PieChartWithTitle> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            children: [
              Visibility(
                visible: widget.value != null,
                child: Positioned(
                  top: 30,
                  left: 60,
                  bottom: 0,
                  child: Text(
                    '${widget.value}%',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 28 / 20,
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: PieChart(
                  PieChartData(
                    startDegreeOffset: 270,
                    pieTouchData: PieTouchData(
                      enabled: true,
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF464255),
              height: 21 / 18,
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 35.0 : 25.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            value: widget.value?.toDouble(),
            radius: radius,
            showTitle: false,
            color: widget.color,
          );
        case 1:
          return PieChartSectionData(
            value: widget.value != null ? 100 - widget.value!.toDouble() : null,
            radius: radius,
            showTitle: false,
            color: widget.remainingTileColor,
          );

        default:
          throw Error();
      }
    });
  }
}
