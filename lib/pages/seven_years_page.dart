import 'package:flutter/material.dart';
import 'package:mini_makers/components/level_tile.dart';
import 'package:mini_makers/pages/lessons/content_page.dart';
import 'package:mini_makers/pages/lessons/drag_and_drop_page.dart';

class SevenYearsPage extends StatelessWidget {
  const SevenYearsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            LevelTile(
              title: "Lets Learn what is Scratch",
              imagePath: 'assets/scratch.jpg',
              onTap: () {
                Navigator.pushNamed(context, '/contentPage');
              },
            ),
            const SizedBox(height: 20),
            LevelTile(
              onTap: () {
                Navigator.pushNamed(context, '/dragAndDropPage');
              },
              imagePath: "assets/drag.jpeg",
              title: "What is Drag and Drop",
            ),
          ],
        ),
      ),
    );
  }
}
