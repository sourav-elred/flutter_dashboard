// Setup the router with a ShellRoute
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/landing_screen.dart';
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
            path: '/dashboard',
            builder: (context, state) => const Scaffold(
              body: Center(
                child: Text(
                  'dashboard',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GoRoute(
            path: '/order-list',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'settings',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/order-details',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'order-details',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/customer',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'customer',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/analytics',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'analytics',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/reviews',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'reviews',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/foods',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'foods',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/food-details',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'food-details',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/customer-details',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'customer-details',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/calender',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'calender',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/chat',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'chat',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
          GoRoute(
            path: '/wallet',
            builder: (context, state) => const Scaffold(
              body: Center(
                  child: Text(
                'wallet',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
        ],
      ),
    ],
  );
}
