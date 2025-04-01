import 'package:flutter/material.dart';
import 'package:mini_makers/components/level_tile.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/home_page.dart';

class EightYearsPage extends StatelessWidget {
  const EightYearsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          builder: (context) => HomePage(),
                        ));
                  },
                ),
                SizedBox(width: 20),
                Text(
                  "Programming",
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
                  padding: const EdgeInsets.all(24.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.lightBlueAccent,
                    ),
                    itemCount: Level.levelsList2.length,
                    itemBuilder: (context, index) {
                      return LevelTile(
                        level: Level.levelsList2[index],
                        onTap: () {
                          if (Level.levelsList2[index].isCompleted) {
                            Navigator.pushNamed(
                                context, Level.levelsList2[index].contentPath);
                          }
                        },
                        imagePath: Level.levelsList2[index].imagePath,
                        title: Level.levelsList2[index].title,
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
