import 'package:flutter/material.dart';
import 'package:mini_makers/pages/eight_years_page.dart';
import 'package:mini_makers/pages/home_page.dart';
import 'package:mini_makers/pages/lessons/content_page.dart';
import 'package:mini_makers/pages/lessons/drag_and_drop_page.dart';
import 'package:mini_makers/pages/onboarding_screen.dart';
import 'package:mini_makers/pages/seven_years_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/sevenYearsPage': (context) => SevenYearsPage(),
        '/homePage': (context) => HomePage(),
        '/eightYearsPage': (context) => EightYearsPage(),
        '/dragAndDropPage': (context) => DragAndDropPage(),
        '/contentPage': (context) => ContentPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
