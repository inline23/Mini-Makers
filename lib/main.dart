import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mini_makers/boxes.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/home_page.dart';
import 'package:mini_makers/pages/lessons/drag_and_drop_page.dart';
import 'package:mini_makers/pages/lessons/eight_years_page.dart';
import 'package:mini_makers/pages/lessons/if_else_page.dart';
import 'package:mini_makers/pages/lessons/intro_scratch_page.dart';
import 'package:mini_makers/pages/lessons/loop_page.dart';
import 'package:mini_makers/pages/lessons/seven_years_page.dart';
import 'package:mini_makers/pages/onboarding_screen.dart';

void main() async {
  await HiveX(Hive).initFlutter();
  Hive.registerAdapter(LevelAdapter());
  boxLevels = await Hive.openBox<Level>("personBox");
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
        '/dragAndDropPage': (context) => DragAndDropPage(level: 1,),
        '/contentPage': (context) => IntroScratchPage(level:0),
        '/loopPage': (context) => LoopPage(level: 2,),
        '/ifElsePage': (context) => IfElsePage(level: 3,),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
