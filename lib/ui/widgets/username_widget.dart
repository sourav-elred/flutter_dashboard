import 'package:flutter/material.dart';

class UsernameWidget extends StatelessWidget {
  const UsernameWidget({
    super.key,
    required this.isDesktop,
  });

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            backgroundImage:
                NetworkImage('https://avatar.iran.liara.run/public/12'),
          ),
        ),
      ],
    );
  }
}
