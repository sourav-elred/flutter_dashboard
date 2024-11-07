import 'package:flutter/material.dart';

class ChartOrderHeadingWidget extends StatelessWidget {
  const ChartOrderHeadingWidget({
    super.key,
    required this.titleFontSize,
    required this.subtitleFontSize,
  });

  final double titleFontSize;
  final double subtitleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Chart Order',
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF464255),
            height: 20 / 18,
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adip',
          style: TextStyle(
            fontSize: subtitleFontSize,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFB9BBBD),
            height: 14 / 12,
          ),
        ),
      ],
    );
  }
}
