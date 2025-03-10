import 'package:flutter/material.dart';
import 'package:mini_makers/components/level_tile.dart';
import 'package:mini_makers/level.dart';

class SevenYearsPage extends StatefulWidget {
  const SevenYearsPage({super.key});

  @override
  State<SevenYearsPage> createState() => _SevenYearsPageState();
}

class _SevenYearsPageState extends State<SevenYearsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.lightBlueAccent,
            ),
            itemCount: Level.levelsList.length,
            itemBuilder: (context, index) {
              return LevelTile(
                level: Level.levelsList[index],
                onTap: () {
                  if (Level.levelsList[index].isCompleted) {
                    Navigator.pushNamed(
                        context, Level.levelsList[index].contentPath);
                  }
                },
                imagePath: Level.levelsList[index].imagePath,
                title: Level.levelsList[index].title,
              );
            },
          )),
    );
  }
}




// ListView(
//           children: [
//             // intro to scratch level
//             LevelTile(
//               title: "Lets Learn what is Scratch",
//               imagePath: 'assets/scratch.jpg',
//               onTap: () {
//                 Navigator.pushNamed(context, '/contentPage');
//               },
//             ),
//             const SizedBox(height: 20),
//             // Drag and Drop level
//             LevelTile(
//               onTap: () {
//                 Navigator.pushNamed(context, '/dragAndDropPage');
//               },
//               imagePath: "assets/drag.jpeg",
//               title: "What is Drag and Drop",
//             ),
//             const SizedBox(height: 20),
//             LevelTile(
//               onTap: () {
//                 Navigator.pushNamed(context, '/loopPage');
//               },
//               imagePath: 'assets/loop.jpg',
//               title: "Introduction to Loops",
//             ),
//             const SizedBox(height: 20),
//             LevelTile(
//               onTap: () {
//                 Navigator.pushNamed(context, '/ifElsePage');
//               },
//               imagePath: 'assets/ifElse.jpg',
//               title: "If Else in Scratch",
//             ),
//           ],
//         ),