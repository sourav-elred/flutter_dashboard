import 'package:flutter/material.dart';
import 'package:flutter_dashboard/utlis/route_const.dart';
import 'package:go_router/go_router.dart';

mixin SidebarMixing on StatelessWidget {
  var sideMenuItems = [
    {'title': 'Dashboard', 'icon': Icons.home_outlined},
    {'title': 'Order List', 'icon': Icons.list_outlined},
    {'title': 'Order Details', 'icon': Icons.file_copy_outlined},
    {'title': 'Customer', 'icon': Icons.people_alt_outlined},
    {'title': 'Analytics', 'icon': Icons.analytics_outlined},
    {'title': 'Reviews', 'icon': Icons.reviews_outlined},
    {'title': 'Foods', 'icon': Icons.food_bank_outlined},
    {'title': 'Food Details', 'icon': Icons.details_outlined},
    {'title': 'Customer Details', 'icon': Icons.person_pin_circle_outlined},
    {'title': 'Calender', 'icon': Icons.calendar_month_outlined},
    {'title': 'Chat', 'icon': Icons.chat_bubble_outline},
    {'title': 'Wallet', 'icon': Icons.wallet_outlined},
  ];

  void sidebarNavigation(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(RouteConst.dashboard);
        break;
      case 1:
        GoRouter.of(context).go(RouteConst.orderList);
        break;
      case 2:
        GoRouter.of(context).go(RouteConst.orderDetails);
        break;
      case 3:
        GoRouter.of(context).go(RouteConst.customer);
        break;
      case 4:
        GoRouter.of(context).go(RouteConst.analytics);
        break;
      case 5:
        GoRouter.of(context).go(RouteConst.reviews);
        break;
      case 6:
        GoRouter.of(context).go(RouteConst.foods);
        break;
      case 7:
        GoRouter.of(context).go(RouteConst.foodDetails);
        break;
      case 8:
        GoRouter.of(context).go(RouteConst.customerDetails);
        break;
      case 9:
        GoRouter.of(context).go(RouteConst.calender);
        break;
      case 10:
        GoRouter.of(context).go(RouteConst.chat);
        break;
      case 11:
        GoRouter.of(context).go(RouteConst.wallet);
        break;
      default:
        break;
    }
  }

  int getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location == RouteConst.orderList) return 1;
    if (location == RouteConst.orderDetails) return 2;
    if (location == RouteConst.customer) return 3;
    if (location == RouteConst.analytics) return 4;
    if (location == RouteConst.reviews) return 5;
    if (location == RouteConst.foods) return 6;
    if (location == RouteConst.foodDetails) return 7;
    if (location == RouteConst.customerDetails) return 8;
    if (location == RouteConst.calender) return 9;
    if (location == RouteConst.chat) return 10;
    if (location == RouteConst.wallet) return 11;
    return 0; // Default to Dashboard
  }
}
