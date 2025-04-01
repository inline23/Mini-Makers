import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:mini_makers/pages/lessons/eightYears/eight_years_page.dart';

class VariablesPage extends StatelessWidget {
  final int level;
  const VariablesPage({super.key, required this.level});

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
                  "Variables",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 14),
                child: ListView(
                  children: [
                    Text(
                      'Introduction to Variables in Python',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '''A variable in Python is a container that stores data. It allows you to save values and use them later in your program.
Key Points About Variables:
1.No need to declare type – Python automatically assigns the type based on the value.
2.Can store different data types – Numbers, text, lists, etc.
3.Names are case-sensitive – age and Age are different variables.
4.Should start with a letter or underscore (_), not a number.
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/vpy.png'),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset('assets/ovpy.png'),
                    ),
                    Text(
                      'Finally',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '''When you want to use Variable you must think about 3 things
1.Data Type : What type of data do you want to store? Number? , Text?...
2.Name of Variables : When you choose a name for a variable, you must take into account not to take words reserved by the language itself, such as if, for, main. 
In addition, there are symbols that cannot be used, such as “;
3.Data : this is the final step put your data but if it text dont forget uset "..." 
              ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'One of the most common uses of variables is to take a value from the user and store it or perform mathematical operations on it, for example.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/vpy1.png'),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/vpo.png'),
                    ),
                    const SizedBox(height: 10),
                    McqTile(
                      level: level,
                      correctAnswer: 'b',
                      questionTitle: 'num = 3.2\nData Type of this variable',
                      answerA: 'String',
                      answerB: 'Boolean',
                      answerC: 'Integer',
                      answerD: 'None',
                      nextLevelPath: '/loopPy',
                      lessonId: 1,
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
