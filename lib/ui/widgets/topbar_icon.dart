import 'package:flutter/material.dart';

class TopbarIcon extends StatelessWidget {
  const TopbarIcon({
    super.key,
    required this.bgColor,
    required this.icon,
    required this.count,
    required this.countColor,
    this.isCounterRequred = true,
  });

  final Color bgColor;
  final Icon icon;
  final int count;
  final Color countColor;
  final bool isCounterRequred;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (isCounterRequred)
          Positioned(
            top: -10,
            right: -10,
            child: Container(
              height: 26,
              width: 26,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: 19,
                  width: 19,
                  decoration: BoxDecoration(
                    color: countColor,
                    shape: BoxShape.circle, // Circular shape
                  ),
                  child: Center(
                    child: Text(
                      count.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 18 / 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: const Color(0x262D9CDB),
            color: bgColor,
          ),
          child: icon,
        ),
      ],
    );
  }
}
