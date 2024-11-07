import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/order_state_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardOrderStateWidget extends StatelessWidget {
  const DashboardOrderStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: OrderStateCard(
            count: '75',
            subTitle: 'Total Orders',
            icon: 'assets/images/Group 121.png',
          ),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            child: OrderStateCard(
              count: '357',
              subTitle: 'Total Delivered',
              icon: 'assets/images/Group 120.png',
            )),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            child: OrderStateCard(
              count: '65',
              subTitle: 'Total Canceled',
              icon: 'assets/images/Group 118.png',
            )),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: OrderStateCard(
            count: '\$128',
            subTitle: 'Total Revenue',
            icon: 'assets/images/Group 119.png',
          ),
        ),
      ],
    );
  }
}
