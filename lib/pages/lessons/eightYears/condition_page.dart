import 'package:flutter/material.dart';

class ConditionPage extends StatelessWidget {
  const ConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Condition'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 14),
        child: ListView(
          children: [
            Text(
              'Introduction to Conditions in C++',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '''In C++, conditions are used to make decisions in a program based on whether an expression evaluates to true or false. This allows a program to execute different blocks of code depending on certain conditions.

Conditional Statements in C++
C++ provides several ways to implement conditions:

1.if Statement – Executes a block of code if the condition is true.
2.if-else Statement – Provides an alternative block to execute when the condition is false.
3.if-else if-else Statement – Allows checking multiple conditions.
4.switch Statement – Used when there are multiple possible values for a variable.
''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            Text(
              '1. if Statement',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/ifc.png'),
            ),
            Text(
              '''Explanation:

The condition num > 0 is true, so "Number is positive" is printed.''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '2. if-else Statement',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/ifelse.png'),
            ),
            Text(
              '''Explanation:

If num is greater than 0, the first block runs.
Otherwise, the else block executes.
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
    );
  }
}
