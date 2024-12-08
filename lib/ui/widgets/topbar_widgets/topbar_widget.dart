import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_widgets/topbar_icons_section_widget.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_widgets/topbar_searchbar_widget.dart';
import 'package:flutter_dashboard/ui/widgets/username_widget.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({
    super.key,
    required this.isDesktop,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final bool isDesktop;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!isDesktop)
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        const TopbarSearchBarWidget(),
        TopbarIconsSectionWidget(isDesktop: isDesktop),
        UsernameWidget(isDesktop: isDesktop),
      ],
    );
  }
}
