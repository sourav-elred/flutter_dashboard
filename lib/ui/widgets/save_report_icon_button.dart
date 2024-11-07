import 'package:flutter/material.dart';

class SaveReportIconButton extends StatelessWidget {
  const SaveReportIconButton({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.buttonFontSize,
    required this.isDesktop,
  });

  final double horizontalPadding;
  final double verticalPadding;
  final double buttonFontSize;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding * 0.4,
        vertical: verticalPadding * 0.2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF2D9CDB)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.download_outlined,
            color: const Color(0xFF2D9CDB),
            size: buttonFontSize * 1.5,
          ),
          SizedBox(width: isDesktop ? 6 : 0),
          Visibility(
            visible: isDesktop,
            child: Text(
              'Save Report',
              style: TextStyle(
                fontSize: buttonFontSize,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF2D9CDB),
                height: 16 / 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
