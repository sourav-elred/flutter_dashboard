import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/sidebar_widget.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_widgets/topbar_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key, required this.child});

  final Widget child;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return Scaffold(
      key: _scaffoldKey,
      drawer: !isDesktop ? SidebarWidget() : null,
      body: Row(
        children: [
          Visibility(
            visible: isDesktop,
            child: SidebarWidget(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isDesktop ? 36 : 10,
                vertical: isDesktop ? 40 : 10,
              ).copyWith(top: isDesktop ? 40 : 20),
              child: Column(
                children: [
                  TopbarWidget(isDesktop: isDesktop, scaffoldKey: _scaffoldKey),
                  Expanded(child: widget.child),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
