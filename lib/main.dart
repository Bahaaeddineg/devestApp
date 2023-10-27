import 'package:dev/screens/home.dart';
import 'package:dev/strings.dart';
import 'package:flutter/material.dart';

import 'screens/aboutUs.dart';
import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 234, 234, 234),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 234, 234, 234),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      routes: {
        splashScr: (context) => const SplashScreen(),
        home: (context) => const Home(),
        aboutUs: (context) => const AboutUs(),
      },
    );
  }
}
