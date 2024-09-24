import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.icon,
    required this.title,
  });
  final VoidCallback onTap;
  final bool isSelected;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.green[100]?.withOpacity(.8) : null,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon,
            color:
                isSelected ? const Color(0xff00B074) : const Color(0xff464255)),
        horizontalTitleGap: 24,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 21 / 18,
            color:
                isSelected ? const Color(0xff00B074) : const Color(0xff464255),
          ),
        ),
      ),
    );
  }
}
