import 'package:flutter/material.dart';

class DashboardCustomerToggleButton extends StatelessWidget {
  const DashboardCustomerToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          color: Colors.white,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF00B074),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Card(
          color: Colors.white,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF00B074),
            ),
          ),
        ),
      ],
    );
  }
}
