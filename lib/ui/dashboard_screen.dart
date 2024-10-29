import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/chart_order_widget.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/customer_review_card.dart';
import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/order_state_card.dart';
import 'package:flutter_dashboard/ui/widgets/pie_chart_widget.dart';
import 'package:flutter_dashboard/ui/widgets/topbar_icon.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                  child: _buildHeader(context),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 40,
                      conditionalValues: [
                        const Condition.smallerThan(name: TABLET, value: 20)
                      ],
                    ).value,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: _buildOrderStateCards(context),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 40,
                      conditionalValues: [
                        const Condition.smallerThan(name: TABLET, value: 20)
                      ],
                    ).value,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: _buildCharts(context),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 40,
                      conditionalValues: [
                        const Condition.smallerThan(name: TABLET, value: 20)
                      ],
                    ).value,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: _buildMonthlySalesChart(context),
                ),
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    height: ResponsiveValue<double>(
                      context,
                      defaultValue: 40,
                      conditionalValues: [
                        const Condition.smallerThan(name: TABLET, value: 20)
                      ],
                    ).value,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: _buildCustomerReviewSection(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ResponsiveRowColumnItem(
          // rowFlex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF464255),
                  height: 38 / 32,
                ),
              ),
              Text(
                'Hi, Sourav. Welcome back to Dashboard!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFA3A3A3),
                  height: 21 / 18,
                ),
              ),
            ],
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? true
                : false,
            child: const SizedBox(width: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                ? false
                : true,
            child: const SizedBox(height: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          // rowFlex: 2,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TopbarIcon(
                    bgColor: Color(0x262D9CDB),
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0xff2D9CDB),
                    ),
                    count: 0,
                    countColor: Colors.black,
                    isCounterRequred: false,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Filter Period',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF3E4954),
                          fontWeight: FontWeight.w500,
                          height: 21 / 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '17 April 2020 - 21 May 2020',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF3E4954),
                          fontWeight: FontWeight.w400,
                          height: 18 / 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xFFB9BBBD),
                    size: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOrderStateCards(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: OrderStateCard(
            count: '75',
            subTitle: 'Total Orders',
            icon: 'assets/images/Group 121.png',
          ),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            child: OrderStateCard(
              count: '357',
              subTitle: 'Total Delivered',
              icon: 'assets/images/Group 120.png',
            )),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
            rowFlex: 1,
            child: OrderStateCard(
              count: '65',
              subTitle: 'Total Canceled',
              icon: 'assets/images/Group 118.png',
            )),
        ResponsiveRowColumnItem(
          child: SizedBox(width: 15),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: OrderStateCard(
            count: '\$128',
            subTitle: 'Total Revenue',
            icon: 'assets/images/Group 119.png',
          ),
        ),
      ],
    );
  }

  Widget _buildCharts(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        const ResponsiveRowColumnItem(rowFlex: 1, child: PieChartWidget()),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
            child: const SizedBox(height: 20),
          ),
        ),
        ResponsiveRowColumnItem(
          child: ResponsiveVisibility(
            visible: !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
            child: const SizedBox(width: 20),
          ),
        ),
        const ResponsiveRowColumnItem(rowFlex: 1, child: ChartOrderWidget()),
      ],
    );
  }

  Widget _buildMonthlySalesChart(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    return ResponsiveRowColumn(
      layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
          ? ResponsiveRowColumnType.ROW
          : ResponsiveRowColumnType.COLUMN,
      children: [
        const ResponsiveRowColumnItem(
          rowFlex: 2,
          child: MonthlySalesChartWidget(),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(
            width: isDesktop ? 15 : 0,
            height: isDesktop ? 0 : 15,
          ),
        ),
        const ResponsiveRowColumnItem(
          rowFlex: 1,
          child: CustomerMapChartWidget(),
        ),
      ],
    );
  }

  Widget _buildCustomerReviewSection(BuildContext context) {
    return Column(
      children: [
        ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ResponsiveRowColumnItem(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Review',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF464255),
                      height: 38 / 32,
                    ),
                  ),
                  Text(
                    'Eum fuga consequuntur utadsjn et.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFA3A3A3),
                      height: 21 / 18,
                    ),
                  ),
                ],
              ),
            ),
            ResponsiveRowColumnItem(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF00B074),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF00B074),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomReviewCard(
                usernameDpPath:
                    'https://gravatar.com/avatar/bb264c1ac58f6b5a1dde5a618e820424?s=400&d=robohash&r=x',
                username: 'Jons Sena',
                ratingCount: 4,
                ratingText: '4.5',
                imagePath: 'assets/images/image 4.png',
              ),
              SizedBox(width: 100),
              CustomReviewCard(
                usernameDpPath:
                    'https://gravatar.com/avatar/e16619ebbbcc154052d402a20c59690e?s=400&d=robohash&r=x',
                username: 'Sofia',
                ratingCount: 3,
                ratingText: '3.0',
                imagePath: 'assets/images/image 5.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_dashboard/ui/widgets/chart_order_widget.dart';
// import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widget.dart';
// import 'package:flutter_dashboard/ui/widgets/customer_review_card.dart';
// import 'package:flutter_dashboard/ui/widgets/monthly_sales_chart_widget.dart';
// import 'package:flutter_dashboard/ui/widgets/order_state_card.dart';

// import 'package:flutter_dashboard/ui/widgets/pie_chart_widget.dart';
// import 'package:flutter_dashboard/ui/widgets/topbar_icon.dart';
// import 'package:responsive_framework/responsive_framework.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 20),
//         child: ScrollConfiguration(
//           behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ResponsiveRowColumn(
//                   layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
//                       ? ResponsiveRowColumnType.ROW
//                       : ResponsiveRowColumnType.COLUMN,
//                   children: [
//                     const ResponsiveRowColumnItem(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Dashboard',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xFF464255),
//                               height: 38 / 32,
//                             ),
//                           ),
//                           Text(
//                             'Hi, Sourav. Welcome back to Dashboard!',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xFFA3A3A3),
//                               height: 21 / 18,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const ResponsiveRowColumnItem(child: Spacer()),
//                     ResponsiveRowColumnItem(
//                       child: Card(
//                         elevation: 2,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         color: Colors.white,
//                         child: const Padding(
//                           padding: EdgeInsets.all(16.0),
//                           child: Row(
//                             children: [
//                               TopbarIcon(
//                                 bgColor: Color(0x262D9CDB),
//                                 icon: Icon(
//                                   Icons.calendar_month_outlined,
//                                   color: Color(0xff2D9CDB),
//                                 ),
//                                 count: 0,
//                                 countColor: Colors.black,
//                                 isCounterRequred: false,
//                               ),
//                               SizedBox(width: 16),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Filter Period',
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       color: Color(0xFF3E4954),
//                                       fontWeight: FontWeight.w500,
//                                       height: 21 / 18,
//                                     ),
//                                   ),
//                                   SizedBox(height: 5),
//                                   Text(
//                                     '17 April 2020 - 21 May 2020',
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       color: Color(0xFF3E4954),
//                                       fontWeight: FontWeight.w400,
//                                       height: 18 / 12,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(width: 8),
//                               Icon(
//                                 Icons.keyboard_arrow_down_outlined,
//                                 color: Color(0xFFB9BBBD),
//                                 size: 32,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 40),
//                 const Row(
//                   children: [
//                     Expanded(
//                         child: OrderStateCard(
//                       count: '75',
//                       subTitle: 'Total Orders',
//                       icon: 'assets/images/Group 121.png',
//                     )),
//                     SizedBox(width: 15),
//                     Expanded(
//                         child: OrderStateCard(
//                       count: '357',
//                       subTitle: 'Total Delivered',
//                       icon: 'assets/images/Group 120.png',
//                     )),
//                     SizedBox(width: 15),
//                     Expanded(
//                         child: OrderStateCard(
//                       count: '65',
//                       subTitle: 'Total Canceled',
//                       icon: 'assets/images/Group 118.png',
//                     )),
//                     SizedBox(width: 15),
//                     Expanded(
//                         child: OrderStateCard(
//                       count: '\$128',
//                       subTitle: 'Total Revenue',
//                       icon: 'assets/images/Group 119.png',
//                     )),
//                   ],
//                 ),
//                 const SizedBox(height: 40),
//                 const Row(
//                   children: [
//                     Expanded(child: PieChartWidget()),
//                     SizedBox(width: 15),
//                     Expanded(child: ChartOrderWidget()),
//                   ],
//                 ),
//                 const SizedBox(height: 40),
//                 const Row(
//                   children: [
//                     Expanded(flex: 2, child: MonthlySalesChartWidget()),
//                     SizedBox(width: 15),
//                     Expanded(child: CustomerMapChartWidget()),
//                   ],
//                 ),
//                 const SizedBox(height: 40),
//                 Row(
//                   children: [
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Customer Review',
//                           style: TextStyle(
//                             fontSize: 32,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xFF464255),
//                             height: 38 / 32,
//                           ),
//                         ),
//                         Text(
//                           'Eum fuga consequuntur utadsjn et.',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xFFA3A3A3),
//                             height: 21 / 18,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Spacer(),
//                     Card(
//                       color: Colors.white,
//                       child: Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(14),
//                         ),
//                         child: const Icon(
//                           Icons.arrow_back_ios,
//                           color: Color(0xFF00B074),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     Card(
//                       color: Colors.white,
//                       child: Container(
//                         height: 50,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(14),
//                         ),
//                         child: const Icon(
//                           Icons.arrow_forward_ios,
//                           color: Color(0xFF00B074),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 40),
//                 const SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       CustomReviewCard(
//                         usernameDpPath:
//                             'https://s3-alpha-sig.figma.com/img/7331/810d/917a8c7c98dcafff723bccecbf9dd539?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ON6vqfsLlqYxdYhoEujmBPs4FEkC~KoNU5gRytVCEJt2dZl8fqNZPN0b8ZWzsc4ynMHJ4xNXa1Zpk39ofmBT6n9b4Mp0xVdQM93Lj~Hs-XX1HasL~lH8LL-pTfgNqX1gcexFQmJwb0KEbDEeevIyoPaA1Z6NyWEQdGdQp-WbOuHKQXkOW-VdEzjXFQge5XRctnbtzOTg9pJFN7fV0AmJ8U7Rkp2AEz4a0PQ4jeKEelc43YmpOALXcNcoh0eW6cwIor8e-2OKZfa3eyrZY6hzyB2RY-9qgJ1B5uBGFvga3S84tbx5cikQDHDOCCgBTeO~NdYvv~exi2ilae7z0ib7FA__',
//                         username: 'Jons Sena',
//                         ratingCount: 4,
//                         ratingText: '4.5',
//                         imagePath: 'assets/images/image 4.png',
//                       ),
//                       SizedBox(width: 100),
//                       CustomReviewCard(
//                         usernameDpPath:
//                             'https://s3-alpha-sig.figma.com/img/9e1c/6933/670791a7be1efeb4c6ca1dbefb8bf86f?Expires=1729468800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pi0SI7vHmA~PVvtVjYlM4UgxBYQFxgGHKrgkXsCncfDNo4ii1a1vH7HNiEFbj2Tj0~KOukZ2E-mm90lcwws2ddeSAho7UH-iX~n-q-NI4cI6rWHxIzIFSLNdfw9dRYwnrreGRMn0k3xS4GYv2AMWYOl6BJCdOBx9yLpHPhCgdO5HMx6TpbTMpmeEexjZ0u9~LNrrpnJDHszkh4~WRegegTEutONEcTodgLGE2t96A3c965swMBAX99dwefxLZhU05NX7aTb-dJMHnNCCs9Ucgg-I808u074wDaEewzD277fWYL1E7DEKuBGPFLn0WVaYZiFYsm4JIPe1gCM1STCSew__',
//                         username: 'Sofia',
//                         ratingCount: 3,
//                         ratingText: '3.0',
//                         imagePath: 'assets/images/image 5.png',
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
