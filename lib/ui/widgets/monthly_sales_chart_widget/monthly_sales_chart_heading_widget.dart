import 'package:flutter/material.dart';

class MonthlySalesChartHeading extends StatelessWidget {
  const MonthlySalesChartHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Total Revenue',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF464255),
            height: 20 / 18,
          ),
        ),
        Spacer(),
        Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: Color(0xff2D9CDB),
            ),
            SizedBox(width: 10),
            Text(
              '2020',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFA3A3A3),
                height: 23 / 14,
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: Color(0xffFF5B5B),
            ),
            SizedBox(width: 10),
            Text(
              '2021',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFFA3A3A3),
                height: 23 / 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
