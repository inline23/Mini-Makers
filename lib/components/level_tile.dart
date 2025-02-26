import 'package:flutter/material.dart';
import 'package:mini_makers/level.dart';

// ignore: must_be_immutable
class LevelTile extends StatelessWidget {
  void Function()? onTap;
  String? imagePath;
  String? title;
  Level level;
  LevelTile({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.title,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            // 'assets/scratch.jpg'
            child: Image.asset(imagePath!),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // "Lets Learn what is Scratch"
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  level.isCompleted
                      ? Icon(
                          Icons.lock_open,
                        )
                      : Icon(Icons.lock),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
