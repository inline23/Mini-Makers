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

  @HiveField(0)
  String title;

  @HiveField(1)
  String imagePath;
  @HiveField(2)
  String contentPath;
  @HiveField(3)
  bool isCompleted;
}
