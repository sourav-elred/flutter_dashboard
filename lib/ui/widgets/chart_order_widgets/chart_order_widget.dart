import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/chart_order_widgets/chart_order_data.dart';

import 'package:flutter_dashboard/ui/widgets/chart_order_widgets/chart_order_heading_widget.dart';

import 'package:flutter_dashboard/ui/widgets/save_report_icon_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ChartOrderWidget extends StatelessWidget {
  const ChartOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    final horizontalPadding = isDesktop ? 40.0 : (isTablet ? 30.0 : 20.0);
    final verticalPadding = isDesktop ? 25.0 : (isTablet ? 20.0 : 15.0);
    final titleFontSize = isDesktop ? 22.0 : (isTablet ? 20.0 : 18.0);
    final subtitleFontSize = isDesktop ? 16.0 : (isTablet ? 14.0 : 12.0);
    final buttonFontSize = isDesktop ? 20.0 : (isTablet ? 18.0 : 16.0);
    final chartAspectRatio = isDesktop ? 4.0 : (isTablet ? 3.5 : 3.0);

    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: SizedBox(
          height: 240,
          child: Column(
            children: [
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                rowPadding: const EdgeInsets.only(bottom: 20),
                columnPadding: const EdgeInsets.only(bottom: 20),
                layout: ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ChartOrderHeadingWidget(
                      titleFontSize: titleFontSize,
                      subtitleFontSize: subtitleFontSize,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: SaveReportIconButton(
                      horizontalPadding: horizontalPadding,
                      verticalPadding: verticalPadding,
                      buttonFontSize: buttonFontSize,
                      isDesktop: isDesktop,
                    ),
                  ),
                ],
              ),
              AspectRatio(
                aspectRatio: chartAspectRatio,
                child: LineChart(mainData(isDesktop)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
