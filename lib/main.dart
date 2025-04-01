import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mini_makers/boxes.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/home_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/condition_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/introduction_to_programming.dart';
import 'package:mini_makers/pages/lessons/eightYears/loops_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/variables_page.dart';
import 'package:mini_makers/pages/lessons/sevenYears/drag_and_drop_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/eight_years_page.dart';
import 'package:mini_makers/pages/lessons/sevenYears/if_else_page.dart';
import 'package:mini_makers/pages/lessons/sevenYears/intro_scratch_page.dart';
import 'package:mini_makers/pages/lessons/sevenYears/loop_page.dart';
import 'package:mini_makers/pages/lessons/sevenYears/seven_years_page.dart';
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
        '/introtoProgramming': (context) => IntroductionToProgramming(level: 0),
        '/Variables': (context) => VariablesPage(level: 1),
        '/loopPy': (context) => LoopsPage(level :2),
        '/condition': (context) => ConditionPage(level:3 ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
