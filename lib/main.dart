import 'package:flutter/material.dart';
import 'package:konfer_meet/constants/colors.dart';
import 'package:konfer_meet/constants/consts.dart';
import 'package:konfer_meet/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mainColor,
      ),
      routes: {
        '/login': (context) => LoginScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
