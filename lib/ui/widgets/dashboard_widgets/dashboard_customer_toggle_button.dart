import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardCustomerToggleButton extends StatelessWidget {
  const DashboardCustomerToggleButton({super.key, required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => controller.animateTo(
            controller.position.minScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ),
          child: Card(
            color: Colors.white,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF00B074),
              ),
            ),
          ),
        ),
        SizedBox(
          width: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 10 : 0,
        ),
        GestureDetector(
          onTap: () => controller.animateTo(
            controller.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ),
          child: Card(
            color: Colors.white,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF00B074),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
