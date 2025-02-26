import 'package:flutter/material.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/lessons/seven_years_page.dart';

class McqTile extends StatefulWidget {
  const McqTile({
    super.key,
    required this.correctAnswer,
    required this.nextLevelPath,
    required this.questionTitle,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
    required this.lessonId,
    required this.level,
  });

  final String correctAnswer;
  final String nextLevelPath;
  final String questionTitle;
  final String answerA;
  final String answerB;
  final String answerC;
  final String answerD;
  final int lessonId;
  final int level;

  @override
  State<McqTile> createState() => _McqTileState();
}

class _McqTileState extends State<McqTile> {
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
            'Q) ${widget.questionTitle}',
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
                answerText: widget.answerA,
                onPressed: () {
                  String arr = 'a';
                  if (arr == widget.correctAnswer) {
                    // Navigator.pushNamed(context, widget.nextLevelPath);
                    setState(() {
                      Level.levelsList[widget.level + 1].isCompleted = true;
                    });
                    return _showMyDialog();
                  }
                },
              ),
              answerElement(
                arrange: 'b',
                answerText: widget.answerB,
                onPressed: () {
                  String arr = 'b';
                  if (arr == widget.correctAnswer) {
                    // Navigator.pushNamed(context, widget.nextLevelPath);
                    setState(() {
                      Level.levelsList[widget.level + 1].isCompleted = true;
                    });
                    return _showMyDialog();
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
                answerText: widget.answerC,
                onPressed: () {
                  String arr = 'c';
                  if (arr == widget.correctAnswer) {
                    // Navigator.pushNamed(context, widget.nextLevelPath);
                    setState(() {
                      Level.levelsList[widget.level + 1].isCompleted = true;
                    });
                    return _showMyDialog();
                  }
                },
              ),
              answerElement(
                arrange: 'd',
                answerText: widget.answerD,
                onPressed: () {
                  String arr = 'd';
                  if (arr == widget.correctAnswer) {
                    // Navigator.pushNamed(context, widget.nextLevelPath);
                    setState(() {
                      Level.levelsList[widget.level + 1].isCompleted = true;
                    });
                    return _showMyDialog();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showMyDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // يمنع إغلاقه عند النقر خارجه
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.lightBlueAccent.shade100,
          title: Text(
            "Congratulations 👋",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            "Keep Going to Achive More Success",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SevenYearsPage(),
                ));
              },
              child: Text(
                "Close",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// ignore: must_be_immutable, camel_case_types
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

  get context => null;
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
