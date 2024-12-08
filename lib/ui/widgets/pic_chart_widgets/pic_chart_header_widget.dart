import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PieChartHeaderWidget extends StatelessWidget {
  const PieChartHeaderWidget(
      {super.key, required this.showValue, required this.onChanged});

  final bool showValue;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
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
          value: showValue,
          onChanged: onChanged,
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
}
