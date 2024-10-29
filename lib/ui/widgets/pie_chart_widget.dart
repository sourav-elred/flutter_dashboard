import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_with_title.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  bool _showValue = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 28),
            _buildPieCharts(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      columnSpacing: 16,
      children: [
        const ResponsiveRowColumnItem(
          rowFlex: 1,
          child: Text(
            'Pie Chart',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF464255),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildChartToggle(),
              const SizedBox(width: 25),
              _buildValueToggle(),
              const SizedBox(width: 14),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Color(0xFFA3A3A3),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChartToggle() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: false,
          onChanged: null,
          hoverColor: Colors.transparent,
          fillColor: WidgetStateProperty.all(Colors.transparent),
        ),
        const Text(
          'Chart',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF464255),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildValueToggle() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: _showValue,
          onChanged: (value) {
            setState(() {
              _showValue = value!;
            });
          },
          activeColor: const Color(0xFFFF5B5B),
        ),
        const Text(
          'Show Value',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF464255),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildPieCharts() {
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
        value: _showValue ? value : null,
        title: title,
        color: color,
        remainingTileColor: color.withOpacity(0.15),
      ),
    );
  }
}
