import 'package:flutter/material.dart';

class McqTile extends StatelessWidget {
  McqTile({
    super.key,
    required this.correctAnswer,
    required this.nextLevelPath,
    required this.questionTitle,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
  });

  final String correctAnswer;
  final String nextLevelPath;
  final String questionTitle;
  final String answerA;
  final String answerB;
  final String answerC;
  final String answerD;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.lightBlue[800],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // question
          Text(
            'Q) $questionTitle',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              answerElement(
                arrange: 'a',
                answerText: answerA,
                onPressed: () {
                  String arr = 'a';
                  if (arr == correctAnswer) {
                    Navigator.pushNamed(context, nextLevelPath);
                  }
                },
              ),
              answerElement(
                arrange: 'b',
                answerText: answerB,
                onPressed: () {
                  String arr = 'b';
                  if (arr == correctAnswer) {
                    Navigator.pushNamed(context, nextLevelPath);
                  }
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              answerElement(
                arrange: 'c',
                answerText: answerC,
                onPressed: () {
                  String arr = 'c';
                  if (arr == correctAnswer) {
                    Navigator.pushNamed(context, nextLevelPath);
                  }
                },
              ),
              answerElement(
                arrange: 'd',
                answerText: answerD,
                onPressed: () {
                  String arr = 'd';
                  if (arr == correctAnswer) {
                    Navigator.pushNamed(context, nextLevelPath);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class answerElement extends StatelessWidget {
  answerElement({
    super.key,
    required this.arrange,
    required this.answerText,
    required this.onPressed,
  });
  final String arrange;
  final String answerText;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        '$arrange) $answerText',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
