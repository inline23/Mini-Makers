import 'package:flutter/material.dart';

class IntroductionToProgramming extends StatefulWidget {
  const IntroductionToProgramming({super.key});

  @override
  State<IntroductionToProgramming> createState() =>
      _IntroductionToProgrammingState();
}

class _IntroductionToProgrammingState extends State<IntroductionToProgramming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Intro to programming'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
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
                'C++ ?',
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
                'lets take our the most popular example -> helloWorld.\nhow we can do it with c++?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset('assets/helloWorldc.png'),
              ),
              const SizedBox(height: 10),
              Text(
                'Lets Explain Every Line ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '''1. #include <iostream>
This is a preprocessor directive that tells the compiler to include the iostream (input-output stream) library.
The <iostream> library contains functions for standard input (cin), output (cout), and error handling (cerr and clog).
Without this, you wouldn’t be able to use cout for printing to the console or cin for reading input
2. using namespace std;
The C++ Standard Library defines functions, classes, and objects inside a namespace called std.

Writing using namespace std; allows us to use these objects (like cout, cin, etc.) without having to prefix them with std:: every time.

Without this line, you would need to write:
''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset('assets/screenHello.png'),
              ),
              Text(
                '''3.int main () {}
this {} call Scope 
in Scope{in this space we write our code .
when we run our program the compiler read from first line in main} 
4. cout<<"helloWolrd!." ; 
this line mean print hellow world
Note
this message hello world is a String 
thats mean when we want to save string we should use "dsf"
''',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
