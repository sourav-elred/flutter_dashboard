import 'package:flutter/material.dart';
import 'package:flutter_dashboard/ui/widgets/user_ratings_widgets.dart';

class CustomerReviewCardUsernameWidget extends StatelessWidget {
  const CustomerReviewCardUsernameWidget({
    super.key,
    required this.usernameDpPath,
    required this.username,
    required this.ratingCount,
    required this.ratingText,
  });

  final String usernameDpPath;
  final String username;
  final int ratingCount;
  final String ratingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                usernameDpPath,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF464255),
                    height: 25 / 21,
                  ),
                ),
                const Text(
                  '2 days ago',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA3A3A3),
                    height: 24 / 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 250,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF464255),
              height: 23 / 14,
            ),
          ),
        ),
        const SizedBox(height: 20),
        UserRatingsWidget(ratingCount: ratingCount, ratingText: ratingText),
      ],
    );
  }
}
