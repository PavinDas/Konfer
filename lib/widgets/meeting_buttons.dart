import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';

class meetingButtons extends StatelessWidget {
  final VoidCallback onPressed;
  const meetingButtons({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: secColor
            ),
          )
        ],
      ),
    );
  }
}
