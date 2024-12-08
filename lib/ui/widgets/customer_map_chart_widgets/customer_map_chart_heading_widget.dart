import 'package:flutter/material.dart';

class CustomerMapChartHeadingWidget extends StatelessWidget {
  const CustomerMapChartHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Customer Map',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF464255),
            height: 20 / 18,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xffB9BBBD),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  children: [
                    Text(
                      'Weekly',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFB9BBBD),
                        height: 24 / 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xffFF5B5B),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 14),
            const Icon(Icons.more_vert, color: Color(0xffB9BBBD)),
          ],
        ),
      ],
    );
  }
}
