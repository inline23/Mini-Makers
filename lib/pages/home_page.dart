import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("MINI MAKERS"),
      ),
      body: Center(
        child: Text("HomePage"),
      ),
    );
  }
}
