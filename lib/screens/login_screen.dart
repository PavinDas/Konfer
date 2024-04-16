import 'package:flutter/material.dart';
import 'package:konfer/constants/consts.dart';
import 'package:konfer/constants/images.dart';
import 'package:konfer/resources/auth_methods.dart';
import 'package:konfer/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AuthMethods _authMethods = AuthMethods();
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
            const SizedBox(height: 100,),
            Text(appName,style: TextStyle(
              fontFamily: bold,
              fontSize: 50,
              color: whiteColor
            ),),
            const Spacer(),
            const Text(
              'Start or join a meeting',
              style: TextStyle(
                color: whiteColor,
                fontFamily: bold,
                fontSize: 24,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: Image.asset(
                onboarding,
              ),
            ),
            const Spacer(),
            CustomButton(
              onPressed: ()async{
                bool res = await _authMethods.signInWithGoogle(context);
                if(res){
                  Navigator.pushNamed(context, '/home');
                }
              },
              text: googleSign,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
