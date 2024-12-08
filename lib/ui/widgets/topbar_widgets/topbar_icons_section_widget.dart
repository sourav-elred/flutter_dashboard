import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_widgets/topbar_icon.dart';

class TopbarIconsSectionWidget extends StatelessWidget {
  const TopbarIconsSectionWidget({
    super.key,
    required this.isDesktop,
  });

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 40 : 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TopbarIcon(
            bgColor: Color(0x262D9CDB),
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff2D9CDB),
            ),
            count: 21,
            countColor: Color(0xff2D9CDB),
          ),
          SizedBox(width: isDesktop ? 30 : 5),
          const TopbarIcon(
            bgColor: Color(0x262D9CDB),
            icon: Icon(
              Icons.chat_bubble_outline_outlined,
              color: Color(0xff2D9CDB),
            ),
            count: 53,
            countColor: Color(0xff2D9CDB),
          ),
          SizedBox(width: isDesktop ? 30 : 5),
          const TopbarIcon(
            bgColor: Color(0x265E6C93),
            icon: Icon(
              Icons.card_giftcard_outlined,
              color: Color(0xff5E6C93),
            ),
            count: 15,
            countColor: Color(0xff5E6C93),
          ),
          SizedBox(width: isDesktop ? 30 : 5),
          const TopbarIcon(
            bgColor: Color(0x26FF5B5B),
            icon: Icon(
              Icons.settings_outlined,
              color: Color(0xffFF5B5B),
            ),
            count: 19,
            countColor: Color(0xffFF5B5B),
          ),
        ],
      ),
    );
  }
}
