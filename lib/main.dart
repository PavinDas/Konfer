import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:konfer/constants/colors.dart';
import 'package:konfer/constants/strings.dart';
import 'package:konfer/firebase_options.dart';
import 'package:konfer/resources/auth_methods.dart';
import 'package:konfer/screens/home_screen.dart';
import 'package:konfer/screens/login_screen.dart';
// import 'package:konfer/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: StreamBuilder(
          stream: AuthMethods().authChanges,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return const HomeScreen();
            }
            return const LoginScreen();
          }),
    );
  }
}
