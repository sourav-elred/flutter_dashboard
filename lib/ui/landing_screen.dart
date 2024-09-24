import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/sidebar_button.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key, required this.child});

  final Widget child;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/splash_logo.png',
                    color: Colors.red,
                    height: 80,
                  ),
                  const SizedBox(height: 40),
                  Expanded(
                    child: ListView.builder(
                      itemCount: sideMenuItems.length,
                      itemBuilder: (context, index) {
                        return SidebarButton(
                          onTap: () => _sidebarNavigation(index, context),
                          isSelected: index == _getSelectedIndex(context),
                          icon: sideMenuItems[index]['icon'] as IconData,
                          title: sideMenuItems[index]['title'] as String,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }

  void _sidebarNavigation(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/dashboard');
        break;
      case 1:
        GoRouter.of(context).go('/order-list');
        break;
      case 2:
        GoRouter.of(context).go('/order-details');
        break;
      case 3:
        GoRouter.of(context).go('/customer');
        break;
      case 4:
        GoRouter.of(context).go('/analytics');
        break;
      case 5:
        GoRouter.of(context).go('/reviews');
        break;
      case 6:
        GoRouter.of(context).go('/foods');
        break;
      case 7:
        GoRouter.of(context).go('/food-details');
        break;
      case 8:
        GoRouter.of(context).go('/customer-details');
        break;
      case 9:
        GoRouter.of(context).go('/calender');
        break;
      case 10:
        GoRouter.of(context).go('/chat');
        break;
      case 11:
        GoRouter.of(context).go('/wallet');
        break;
      default:
        break;
    }
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location == '/order-list') return 1;
    if (location == '/order-details') return 2;
    if (location == '/customer') return 3;
    if (location == '/analytics') return 4;
    if (location == '/reviews') return 5;
    if (location == '/foods') return 6;
    if (location == '/food-details') return 7;
    if (location == '/customer-details') return 8;
    if (location == '/calender') return 9;
    if (location == '/chat') return 10;
    if (location == '/wallet') return 11;
    return 0; // Default to Dashboard
  }
}
