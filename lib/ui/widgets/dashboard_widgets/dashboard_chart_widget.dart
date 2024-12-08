import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/chart_order_widgets/chart_order_widget.dart';
import 'package:flutter_dashboard/ui/widgets/pic_chart_widgets/pie_chart_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardChartWidget extends StatelessWidget {
  const DashboardChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        const ResponsiveRowColumnItem(rowFlex: 1, child: PieChartWidget()),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
            child: const SizedBox(height: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
            child: const SizedBox(width: 20),
          ),
        ),
        const ResponsiveRowColumnItem(rowFlex: 1, child: ChartOrderWidget()),
      ],
    );
  }
}
