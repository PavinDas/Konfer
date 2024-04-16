import 'package:flutter/material.dart';
import 'package:konfer/constants/consts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final  onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: secColor,
        elevation: 1,
        shadowColor: mainColor,
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: bold,
          fontSize: 17,
          color: whiteColor,
        ),
      ),
    );
  }
}
