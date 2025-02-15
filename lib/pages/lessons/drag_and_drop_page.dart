import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:mini_makers/components/move_cat_sereen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DragAndDropPage extends StatefulWidget {
  const DragAndDropPage({super.key});

  @override
  State<DragAndDropPage> createState() => _DragAndDropPageState();
}

class _DragAndDropPageState extends State<DragAndDropPage> {
  final vedioUrl = 'https://youtu.be/3yDJp21ApUk?si=EsYMwsKp-wrI7hU_';
  late YoutubePlayerController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Drag and Drop'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15),
        child: ListView(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            const SizedBox(height: 10),
            // Titile
            Text(
              'What is Drag&Drop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            // content
            Text(
              'Drag and drop is a user interface (UI) interaction that allows users to move objects (such as files, text, or UI elements) by clicking (or tapping), dragging, and then releasing them in a different location. It is commonly used in operating systems, web applications, and mobile apps for intuitive interactions.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                'Example 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/dragex.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              '''
        in this example The cat will move 4 steps when I click on the green flag.
        I chose the green flag event from the Events section on the left side of the screen and dragged it onto the page. Then, I dragged the move command.
        ''',
              style: TextStyle(
                color: Colors.white,
              ),
            ),

            // cat animation
            // const SizedBox(height: 20),
            Container(
              height: 300,
              child: MovingCatScreen(),
            ),
            // Question Tile
            McqTile(
              correctAnswer: 'b',
              questionTitle: 'Scratch Based On :',
              answerA: 'block-based',
              answerB: 'programmin lang',
              answerC: 'textEdit',
              answerD: 'OOP',
              nextLevelPath: '/dragAndDropPage',
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    final vedioID = YoutubePlayer.convertUrlToId(vedioUrl);
    _controller = YoutubePlayerController(
      initialVideoId: vedioID!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }
}
