// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_review_card.dart';

class DashboardCustomerReviewListWidget extends StatelessWidget {
  const DashboardCustomerReviewListWidget(
      {super.key, required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: const Row(
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
    );
  }
}
