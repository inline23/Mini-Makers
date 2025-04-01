import 'package:flutter/material.dart';
import 'package:mini_makers/pages/lessons/eightYears/eight_years_page.dart';

class ConditionPage extends StatelessWidget {
  final int level;
  const ConditionPage({super.key, required this.level});

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
                  "Condition",
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
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, top: 14),
                child: ListView(
                  children: [
                    Text(
                      '✅ Introduction to if Condition:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '''In programming, the if condition is used to make decisions based on whether a certain condition is True or False. If the condition is True, a block of code is executed. Otherwise, it is skipped.
              
📌 Syntax of if Condition in Python:
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/if1.png'),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '''🐍 Example 1: Basic if Condition''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/if2.png'),
                    ),
                    Text(
                      '''👉 Explanation:
              
age >= 18 checks if the age is greater than or equal to 18.
              
Since the condition is True, the message "You are an adult." is printed.
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '''📚 Example 2: Using if with User Input''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/if3.png'),
                    ),
                    Text(
                      '''👉 Explanation:
              
The program takes an input number.
              
If the number is greater than 0, it prints "The number is positive."
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
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
