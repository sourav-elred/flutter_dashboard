import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_widgets/pic_chart_with_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PieChartMainWidget extends StatelessWidget {
  const PieChartMainWidget({super.key, required this.showValue});

  final bool showValue;

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.center,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      columnCrossAxisAlignment: CrossAxisAlignment.center,
      columnMainAxisAlignment: MainAxisAlignment.center,
      columnSpacing: 20,
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: _buildPieChart('Total Order', 81, const Color(0xFFFF5B5B)),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: _buildPieChart('Customer Growth', 22, const Color(0xFF00B074)),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: _buildPieChart('Total Revenue', 62, const Color(0XFF2D9CDB)),
        ),
      ],
    );
  }

  Widget _buildPieChart(String title, int value, Color color) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: PieChartWithTitle(
        value: showValue ? value : null,
        title: title,
        color: color,
        remainingTileColor: color.withOpacity(0.15),
      ),
    );
  }
}
