import 'package:flutter/material.dart';
import 'package:konfer_meet/constants/consts.dart';
import 'package:konfer_meet/constants/images.dart';
import 'package:konfer_meet/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Start or join a meeting',
              style: TextStyle(
                color: textColor,
                fontFamily: bold,
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Image.asset(
                onboarding,
              ),
            ),
            CustomButton(
              onPressed: (){},
              text: googleSign,
            ),
          ],
        ),
      ),
    );
  }
}
