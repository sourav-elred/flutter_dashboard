import 'package:flutter/material.dart';

class UserRatingsWidget extends StatelessWidget {
  const UserRatingsWidget({
    super.key,
    required this.ratingCount,
    required this.ratingText,
  });

  final int ratingCount;
  final String ratingText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Icon(
            Icons.star,
            color: i <= ratingCount
                ? const Color(0xFFF7C604)
                : const Color(0xFFB9BBBD),
          ),
        const SizedBox(width: 15),
        Text(
          ratingText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 21 / 18,
            color: Color(0xFF464255),
          ),
        ),
      ],
    );
  }
}
