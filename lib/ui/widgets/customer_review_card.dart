import 'package:flutter/material.dart';

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
            Column(
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
                Row(
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Icon(
                        Icons.star,
                        color: i <= ratingCount
                            ? const Color(0xFFF7C604)
                            : const Color(0xFFB9BBBD),
                      ),
                    const SizedBox(width: 15),
                    Text(
                      ratingText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 21 / 18,
                        color: Color(0xFF464255),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: -10,
              right: -140,
              child: Image.asset(imagePath),
            ),
          ],
        ),
      ),
    );
  }
}
