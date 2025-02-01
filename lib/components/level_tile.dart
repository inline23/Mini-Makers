import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LevelTile extends StatelessWidget {
  void Function()? onTap;
  String? imagePath;
  String? title;
  LevelTile({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.title,
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
              child: Text(
                title!,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
