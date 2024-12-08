import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_map_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget/monthly_sales_chart_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardMonthlySalesChartWidget extends StatelessWidget {
  const DashboardMonthlySalesChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        const ResponsiveRowColumnItem(
          rowFlex: 2,
          child: MonthlySalesChartWidget(),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(
            width: isDesktop ? 15 : 0,
            height: isDesktop ? 0 : 15,
          ),
        ),
        const ResponsiveRowColumnItem(
          rowFlex: 1,
          child: CustomerMapChartWidget(),
        ),
      ],
    );
  }
}
