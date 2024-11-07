import 'package:flutter/material.dart';

class OrderStateCard extends StatelessWidget {
  const OrderStateCard({
    super.key,
    required this.count,
    required this.subTitle,
    required this.icon,
  });

  final String count;
  final String subTitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 38,
              backgroundColor: const Color(0x2600b074),
              child: Image.asset(icon, height: 38),
            ),
            const SizedBox(width: 25),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count.toString(),
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF464255),
                    height: 35 / 36,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF464255),
                    height: 19 / 14,
                  ),
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0x2600b074),
                      child: Icon(
                        Icons.arrow_upward_outlined,
                        color: Color(0xff00A389),
                        size: 8,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '4% (30 days)',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA3A3A3),
                        height: 18 / 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
