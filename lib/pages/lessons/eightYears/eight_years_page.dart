import 'package:flutter/material.dart';
import 'package:mini_makers/pages/lessons/eightYears/condition_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/introduction_to_programming.dart';
import 'package:mini_makers/pages/lessons/eightYears/loops_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/variables_page.dart';
import 'package:mini_makers/pages/lessons/eightYears/widgets/levelTile.dart';

class EightYearsPage extends StatelessWidget {
  const EightYearsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Lets Code'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: ListView(
            children: [
              // Text(
              //     'levels\\nunderstanding variables\nSum&Sub\nifStatemnt\nloops'),
              Leveltile(
                imagePath: 'assets/introprogramming.png',
                title: 'Introduction To Programming',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroductionToProgramming(),
                      ));
                },
              ),
              const SizedBox(height: 10),
              Leveltile(
                imagePath: 'assets/var.jpg',
                title: 'Variables',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VariablesPage(),
                      ));
                },
              ),
              const SizedBox(height: 10),
              Leveltile(
                imagePath: 'assets/Loops-in-programming-768.jpg',
                title: 'Loops',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoopsPage(),
                      ));
                },
              ),
              const SizedBox(height: 10),
              Leveltile(
                imagePath: 'assets/javascript-if-else-statement.png',
                title: 'Conditions',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConditionPage(),
                      ));
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
