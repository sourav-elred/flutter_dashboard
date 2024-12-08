import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_widgets/topbar_icon.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ResponsiveRowColumnItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF464255),
                  height: 38 / 32,
                ),
              ),
              Text(
                'Hi, Sourav. Welcome back to Dashboard!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFA3A3A3),
                  height: 21 / 18,
                ),
              ),
            ],
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? true
                : false,
            child: const SizedBox(width: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? false
                : true,
            child: const SizedBox(height: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const TopbarIcon(
                    bgColor: Color(0x262D9CDB),
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0xff2D9CDB),
                    ),
                    count: 0,
                    countColor: Colors.black,
                    isCounterRequred: false,
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Filter Period',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3E4954),
                          fontWeight: FontWeight.w500,
                          height: 21 / 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '17 April 2020 - 21 May 2020',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF3E4954),
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: isDesktop ? 8 : 0),
                  if (!isDesktop) const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFFB9BBBD),
                    size: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
