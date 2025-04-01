import 'package:hive/hive.dart';

part 'level.g.dart';

@HiveType(typeId: 1)
class Level {
  Level({
    required this.title,
    required this.imagePath,
    required this.contentPath,
    required this.isCompleted,
  });

  static List<Level> levelsList = [
      Level(
        title: "Lets Learn what is Scratch",
        imagePath: 'assets/scratch.jpg',
        contentPath: '/contentPage',
        isCompleted: true,
      ),
      Level(
        title: "What is Drag and Drop",
        imagePath: 'assets/drag.jpeg',
        contentPath: '/dragAndDropPage',
        isCompleted: false,
      ),
      Level(
        title: "Introduction to Loops",
        imagePath: 'assets/loop.jpg',
        contentPath: '/loopPage',
        isCompleted: false,
      ),
      Level(
        title: "if Else in Scratch",
        imagePath: 'assets/ifElse.jpg',
        contentPath: '/ifElsePage',
        isCompleted: false,
      ),
    ];
  static List<Level> levelsList2 = [
      Level(
        title: "Introduction to Programming",
        imagePath: 'assets/introprogramming.png',
        contentPath: '/introtoProgramming',
        isCompleted: true,
      ),
      Level(
        title: "Variables",
        imagePath: 'assets/varinPy.png',
        contentPath: '/Variables',
        isCompleted: false,
      ),
      Level(
        title: "Loops",
        imagePath: 'assets/Loops-in-programming-768.jpg',
        contentPath: '/loopPy',
        isCompleted: false,
      ),
      Level(
        title: "Conditions",
        imagePath: 'assets/javascript-if-else-statement.png',
        contentPath: '/condition',
        isCompleted: false,
      ),
    ];

  @HiveField(0)
  String title;

  @HiveField(1)
  String imagePath;
  @HiveField(2)
  String contentPath;
  @HiveField(3)
  bool isCompleted;
}
