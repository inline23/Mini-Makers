import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:mini_makers/pages/lessons/eightYears/eight_years_page.dart';

class IntroductionToProgramming extends StatefulWidget {
  int level;
  IntroductionToProgramming({super.key, required this.level});

  @override
  State<IntroductionToProgramming> createState() =>
      _IntroductionToProgrammingState();
}

class _IntroductionToProgrammingState extends State<IntroductionToProgramming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      // appBar: AppBar(
      //   title: Text('Intro to programming'),
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.white,
      // ),
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
                  "Introductuon to Programming",
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
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 24, bottom: 24),
                child: ListView(
                  children: [
                    Text(
                      '''Programming is the process of giving instructions to a computer to perform specific tasks. It involves writing code using a programming language, such as Python, Java, or C++, to create software applications, websites, games, and more.
          
Computers do not understand human language, so programmers use special languages with clear rules and syntax to communicate with them. These instructions tell the computer what to do, step by step.
          
Programming is used in almost every field today, from healthcare and finance to entertainment and education. Learning to program helps develop problem-solving skills and opens up many career opportunities in the technology industry
            ''',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Python ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/helloWorld.png'),
                    ),
                    Text(
                      'lets take our the most popular example -> helloWorld.\nhow we can do it with python?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/hpy.png'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'with this line you can code program display hello world ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    McqTile(
                      isSevenYears: false,
                      level: widget.level,
                      correctAnswer: 'b',
                      questionTitle:
                          'what is the correct syntax to \ndisplay Ahmed',
                      answerA: 'print \'Ahmed\'',
                      answerB: 'print (\'Ahmed\')',
                      answerC: 'Cout<<"Ahmed"',
                      answerD: 'None',
                      nextLevelPath: '/loopPy',
                      lessonId: 1,
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
