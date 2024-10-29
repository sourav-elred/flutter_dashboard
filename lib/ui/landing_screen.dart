import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/sidebar_button.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_icon.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key, required this.child});

  final Widget child;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var sideMenuItems = [
    {'title': 'Dashboard', 'icon': Icons.home_outlined},
    {'title': 'Order List', 'icon': Icons.list_outlined},
    {'title': 'Order Details', 'icon': Icons.file_copy_outlined},
    {'title': 'Customer', 'icon': Icons.people_alt_outlined},
    {'title': 'Analytics', 'icon': Icons.analytics_outlined},
    {'title': 'Reviews', 'icon': Icons.reviews_outlined},
    {'title': 'Foods', 'icon': Icons.food_bank_outlined},
    {'title': 'Food Details', 'icon': Icons.details_outlined},
    {'title': 'Customer Details', 'icon': Icons.person_pin_circle_outlined},
    {'title': 'Calender', 'icon': Icons.calendar_month_outlined},
    {'title': 'Chat', 'icon': Icons.chat_bubble_outline},
    {'title': 'Wallet', 'icon': Icons.wallet_outlined},
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return Scaffold(
      key: _scaffoldKey,
      drawer: !isDesktop ? _buildSidebar() : null,
      body: Row(
        children: [
          Visibility(
            visible: isDesktop,
            child: _buildSidebar(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isDesktop ? 36 : 10,
                vertical: isDesktop ? 40 : 10,
              ).copyWith(top: isDesktop ? 40 : 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!isDesktop)
                        IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                        ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFEBEBEB)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(color: Color(0xFFEBEBEB)),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Search here',
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF969BA0),
                            ),
                            suffixIconColor: Color(0xFFA4A4A4),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ),
                      Padding(
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Visibility(
                            visible: isDesktop,
                            child: RichText(
                              text: const TextSpan(
                                text: 'Hello, ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 19 / 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Sourav',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      height: 19 / 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (isDesktop) const SizedBox(width: 18),
                          CircleAvatar(
                            radius: isDesktop ? 27 : 20,
                            backgroundColor: Colors.white,
                            child: const CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  'https://avatar.iran.liara.run/public/12'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: widget.child),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
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
                    onTap: () => _sidebarNavigation(index, context),
                    isSelected: index == _getSelectedIndex(context),
                    icon: sideMenuItems[index]['icon'] as IconData,
                    title: sideMenuItems[index]['title'] as String,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sidebarNavigation(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/dashboard');
        break;
      case 1:
        GoRouter.of(context).go('/order-list');
        break;
      case 2:
        GoRouter.of(context).go('/order-details');
        break;
      case 3:
        GoRouter.of(context).go('/customer');
        break;
      case 4:
        GoRouter.of(context).go('/analytics');
        break;
      case 5:
        GoRouter.of(context).go('/reviews');
        break;
      case 6:
        GoRouter.of(context).go('/foods');
        break;
      case 7:
        GoRouter.of(context).go('/food-details');
        break;
      case 8:
        GoRouter.of(context).go('/customer-details');
        break;
      case 9:
        GoRouter.of(context).go('/calender');
        break;
      case 10:
        GoRouter.of(context).go('/chat');
        break;
      case 11:
        GoRouter.of(context).go('/wallet');
        break;
      default:
        break;
    }
  }

  int _getSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location == '/order-list') return 1;
    if (location == '/order-details') return 2;
    if (location == '/customer') return 3;
    if (location == '/analytics') return 4;
    if (location == '/reviews') return 5;
    if (location == '/foods') return 6;
    if (location == '/food-details') return 7;
    if (location == '/customer-details') return 8;
    if (location == '/calender') return 9;
    if (location == '/chat') return 10;
    if (location == '/wallet') return 11;
    return 0; // Default to Dashboard
  }
}
