import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/customer_map_chart_widgets/customer_review_card_username_widget.dart';

class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({
    super.key,
    required this.username,
    required this.usernameDpPath,
    required this.ratingCount,
    required this.ratingText,
    required this.imagePath,
  });

  final String username;
  final String usernameDpPath;
  final int ratingCount;
  final String ratingText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(30),
        width: 450,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomerReviewCardUsernameWidget(
              usernameDpPath: usernameDpPath,
              username: username,
              ratingCount: ratingCount,
              ratingText: ratingText,
            ),
            Positioned(top: -10, right: -140, child: Image.asset(imagePath)),
          ],
        ),
      ),
    );
  }
}
