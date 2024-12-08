// Setup the router with a ShellRoute
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/dashboard_screen.dart';
import 'package:flutter_dashboard/ui/landing_screen.dart';
import 'package:flutter_dashboard/utlis/route_const.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/dashboard',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          // Dashboard layout with a sidebar and top bar
          return LandingScreen(child: child);
        },
        routes: [
          GoRoute(
            path: RouteConst.dashboard,
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: RouteConst.orderList,
            builder: (context, state) => const EmptyWidget(label: 'order list'),
          ),
          GoRoute(
            path: RouteConst.orderDetails,
            builder: (context, state) =>
                const EmptyWidget(label: 'order-details'),
          ),
          GoRoute(
            path: RouteConst.customer,
            builder: (context, state) => const EmptyWidget(label: 'customer'),
          ),
          GoRoute(
            path: RouteConst.analytics,
            builder: (context, state) => const EmptyWidget(label: 'analytics'),
          ),
          GoRoute(
            path: RouteConst.reviews,
            builder: (context, state) => const EmptyWidget(label: 'reviews'),
          ),
          GoRoute(
            path: RouteConst.foods,
            builder: (context, state) => const EmptyWidget(label: 'foods'),
          ),
          GoRoute(
            path: RouteConst.foodDetails,
            builder: (context, state) =>
                const EmptyWidget(label: 'food-details'),
          ),
          GoRoute(
            path: RouteConst.customerDetails,
            builder: (context, state) =>
                const EmptyWidget(label: 'customer-details'),
          ),
          GoRoute(
            path: RouteConst.calender,
            builder: (context, state) => const EmptyWidget(label: 'calender'),
          ),
          GoRoute(
            path: RouteConst.chat,
            builder: (context, state) => const EmptyWidget(label: 'chat'),
          ),
          GoRoute(
            path: RouteConst.wallet,
            builder: (context, state) => const EmptyWidget(label: 'wallet'),
          ),
        ],
      ),
    ],
  );
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        label,
        style: const TextStyle(color: Colors.black),
      )),
    );
  }
}
