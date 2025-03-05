import 'package:flutter/material.dart';

class VariablesPage extends StatelessWidget {
  const VariablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Variables'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24, top: 14),
        child: ListView(
          children: [
            Text(
              'Introduction to Variables in C++',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '''In programming, variables are used to store data that can be changed during the execution of a program. A variable is like a container that holds a value. Each variable has:

A name (identifier)
A type (determines what kind of data it can store)
A value (the actual data stored in it)
Declaring and Initializing Variables in C++
In C++, you must declare a variable before using it. The general syntax is:
''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/datatype.png'),
            ),
            Text(
              '''data_type: Specifies the type of value the variable will store (e.g., int, float, char, string).
variable_name: The name of the variable (e.g., age, price).
value (optional): The initial value assigned to the variable
''',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Text(
              'Example with C++',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/exc.png'),
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
              child: Image.asset('assets/cinEx.png'),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset('assets/rescin.png'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
