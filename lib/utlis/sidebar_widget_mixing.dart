import 'package:flutter/material.dart';
import 'package:flutter_dashboard/utlis/route_const.dart';
import 'package:go_router/go_router.dart';

/// Enum representing the sidebar menu items
enum SidebarMenu {
  dashboard(Icons.home_outlined, RouteConst.dashboard),
  orderList(Icons.list_outlined, RouteConst.orderList),
  orderDetails(Icons.file_copy_outlined, RouteConst.orderDetails),
  customer(Icons.people_alt_outlined, RouteConst.customer),
  analytics(Icons.analytics_outlined, RouteConst.analytics),
  reviews(Icons.reviews_outlined, RouteConst.reviews),
  foods(Icons.food_bank_outlined, RouteConst.foods),
  foodDetails(Icons.details_outlined, RouteConst.foodDetails),
  customerDetails(Icons.person_pin_circle_outlined, RouteConst.customerDetails),
  calendar(Icons.calendar_month_outlined, RouteConst.calender),
  chat(Icons.chat_bubble_outline, RouteConst.chat),
  wallet(Icons.wallet_outlined, RouteConst.wallet);

  /// Icon associated with the menu item
  final IconData icon;

  /// Route associated with the menu item
  final String route;

  const SidebarMenu(this.icon, this.route);
}

mixin SidebarMixing on StatelessWidget {
  /// Returns the list of sidebar menu items
  List<SidebarMenu> get sideMenuItems => SidebarMenu.values;

  /// Handles navigation based on the selected index
  void sidebarNavigation(int index, BuildContext context) {
    if (index < 0 || index >= sideMenuItems.length) {
      return; // Invalid index check
    }
    final selectedMenu = sideMenuItems[index];
    GoRouter.of(context).go(selectedMenu.route);
  }

  /// Gets the currently selected index based on the route
  int getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    return sideMenuItems.indexWhere((menu) => menu.route == location);
  }
}
