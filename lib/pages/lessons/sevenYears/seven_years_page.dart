import 'package:flutter/material.dart';
import 'package:mini_makers/components/level_tile.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/home_page.dart';

class SevenYearsPage extends StatefulWidget {
  const SevenYearsPage({super.key});

  @override
  State<SevenYearsPage> createState() => _SevenYearsPageState();
}

class _SevenYearsPageState extends State<SevenYearsPage> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Hi Kid'),
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.white,
      // ),
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
                  "Scratch",
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
            ),
          ],
        ),
      ),
    );
  }
}