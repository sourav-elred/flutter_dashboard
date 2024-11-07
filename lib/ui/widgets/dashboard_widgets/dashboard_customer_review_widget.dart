import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_Customer_review_list_widget.dart';
import 'package:flutter_dashboard/ui/widgets/dashboard_widgets/dashboard_customer_toggle_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardCustomerReviewWidget extends StatelessWidget {
  const DashboardCustomerReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ResponsiveRowColumnItem(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Review',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464255),
                      height: 38 / 32,
                    ),
                  ),
                  Text(
                    'Eum fuga consequuntur utadsjn et.',
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
              child: DashboardCustomerToggleButton(),
            ),
          ],
        ),
        SizedBox(height: 20),
        DashboardCustomerReviewListWidget(),
      ],
    );
  }
}
