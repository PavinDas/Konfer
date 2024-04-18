import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';
import 'package:konfer/constants/consts.dart';

class meetingButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const meetingButtons({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: secColor,
                borderRadius: BorderRadius.circular(
                  16,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: blackColor.withOpacity(
                      0.06,
                    ),
                    offset: const Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
              width: 60,
              height: 60,
              child: Icon(
                icon,
                color: textColor,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                color: textColor,
                fontFamily: semibold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
