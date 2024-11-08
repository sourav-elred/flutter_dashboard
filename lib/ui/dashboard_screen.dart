import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_customer_review_widget.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_header.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_monthly_sales_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_order_state_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 20, left: isDesktop ? 20 : 6, right: isDesktop ? 20 : 6),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                const ResponsiveRowColumnItem(child: DashboardHeaderWidget()),
                _buildResponsiveSizedBox(context),
                const ResponsiveRowColumnItem(
                  child: DashboardOrderStateWidget(),
                ),
                _buildResponsiveSizedBox(context),
                const ResponsiveRowColumnItem(
                  child: DashboardChartWidget(),
                ),
                _buildResponsiveSizedBox(context),
                const ResponsiveRowColumnItem(
                  child: DashboardMonthlySalesChartWidget(),
                ),
                _buildResponsiveSizedBox(context),
                const ResponsiveRowColumnItem(
                  child: DashboardCustomerReviewWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ResponsiveRowColumnItem _buildResponsiveSizedBox(BuildContext context) {
    return ResponsiveRowColumnItem(
      child: SizedBox(
        height: ResponsiveValue<double>(
          context,
          defaultValue: 40,
          conditionalValues: [
            const Condition.smallerThan(name: TABLET, value: 20)
          ],
        ).value,
      ),
    );
  }
}
