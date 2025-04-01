import 'package:flutter/material.dart';
import 'package:mini_makers/pages/lessons/eightYears/eight_years_page.dart';

class LoopsPage extends StatelessWidget {
  const LoopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EightYearsPage(),
                        ));
                  },
                ),
                SizedBox(width: 20),
                Text(
                  "Loops",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 14),
                child: ListView(
                  children: [
                    Text(
                      'Introduction to Loops',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '''Loops are used in programming to execute a block of code multiple times without writing it repeatedly. There are two main types of loops in Python:
              
              For Loop – Used when the number of iterations is known.
              While Loop – Used when the number of iterations is unknown and depends on a condition.
              1. For Loop
              A for loop iterates over a sequence (list, tuple, string, etc.).
              
              Example: Print numbers from 1 to 5
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/loopPy1.png'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '''2. While Loop
              A while loop runs as long as a condition remains True.
              
              Example: Print numbers from 1 to 5
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 2),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/whilePy.png'),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
