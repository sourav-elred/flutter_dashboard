// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/sidebar_button.dart';
import 'package:flutter_dashboard/utlis/sidebar_widget_mixing.dart';
import 'package:flutter_dashboard/utlis/string_ext.dart';

class SidebarWidget extends StatelessWidget with SidebarMixing {
  SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/splash_logo.png',
              color: Colors.red,
              height: 80,
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: sideMenuItems.length,
                itemBuilder: (context, index) {
                  return SidebarButton(
                    onTap: () => sidebarNavigation(index, context),
                    isSelected: index == getSelectedIndex(context),
                    icon: sideMenuItems[index].icon,
                    title: sideMenuItems[index].route.toTitleCase(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
