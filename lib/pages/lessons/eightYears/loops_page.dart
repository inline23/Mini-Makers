import 'package:flutter/material.dart';

class LoopsPage extends StatelessWidget {
  const LoopsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Loops'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 14),
        child: ListView(
          children: [
            Text(
              'Introduction to Loops in C++',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '''Loops in C++ are used to execute a block of code multiple times. Instead of writing the same code repeatedly, we can use loops to make the program more efficient and readable. There are three main types of loops in C++:

For Loop
While Loop
Do-While Loop

1. For Loop
The for loop is used when the number of iterations is known. It consists of three parts:

Initialization: Sets the starting value.
Condition: Checks if the loop should continue.
Update: Changes the loop variable after each iteration
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
              child: Image.asset('assets/loo.png'),
            ),
            const SizedBox(height: 10),
            Text(
              'Output',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/looO.png'),
            ),
            Text(
              '''2. While Loop
The while loop is used when the number of iterations is not known in advance. It runs as long as the condition remains true.
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
              child: Image.asset('assets/while.png'),
            ),
            const SizedBox(height: 10),
            Text(
              'Output',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/looO.png'),
            ),
            Text(
              '''3. Do-While Loop
The do-while loop is similar to the while loop, but it executes at least once before checking the condition.
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
              child: Image.asset('assets/dowhile.png'),
            ),
            const SizedBox(height: 10),
            Text(
              'Output',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/looO.png'),
            ),
            Text(
              'Conclusion',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '''Loops are essential in C++ programming as they allow us to execute a block of code multiple times efficiently.

Use for loops when the number of iterations is known.
Use while loops when the number of iterations is unknown and depends on a condition.
Use do-while loops when you need to run the code at least once before checking the condition.
''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
