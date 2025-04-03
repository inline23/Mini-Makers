// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:mini_makers/components/move_cat_sereen.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/lessons/sevenYears/seven_years_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DragAndDropPage extends StatefulWidget {
  int level;
  DragAndDropPage({super.key, required this.level});

  @override
  State<DragAndDropPage> createState() => _DragAndDropPageState();
}

class _DragAndDropPageState extends State<DragAndDropPage> {
  final vedioUrl = 'https://youtu.be/3yDJp21ApUk?si=EsYMwsKp-wrI7hU_';
  final vedioUrl1 = 'https://youtu.be/b37s1vJwP_o?si=Sk-tUrrv4nVDYUnA';
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: ListView(
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
          ),
          const SizedBox(height: 10),
          // Titile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'What is Drag&Drop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 5),
          // content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Drag and drop is a user interface (UI) interaction that allows users to move objects (such as files, text, or UI elements) by clicking (or tapping), dragging, and then releasing them in a different location. It is commonly used in operating systems, web applications, and mobile apps for intuitive interactions.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'How to use Scratch',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: YoutubePlayer(
              controller: _controller1,
              showVideoProgressIndicator: true,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Example',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/dragex.png',
                  width: 200,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              '''in this example The cat will move 4 steps when I click on the green flag.
I chose the green flag event from the Events section on the left side of the screen and dragged it onto the page. Then, I dragged the move command.
                ''',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          // cat animation
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              height: 300,
              child: MovingCatScreen(),
            ),
          ),
          const SizedBox(height: 25),
          // Question Tile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: McqTile(
              isSevenYears: true,
              level: widget.level,
              correctAnswer: 'b',
              questionTitle: 'In Example 1 cat will move when :',
              answerA: 'Space Click',
              answerB: 'Green Flag',
              answerC: 'No Move',
              answerD: 'Right Arrow',
              nextLevelPath: '/loopPage',
              lessonId: 1,
            ),
          ),
          const SizedBox(height: 25),
        ],
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
    final vedioID1 = YoutubePlayer.convertUrlToId(vedioUrl1);
    _controller1 = YoutubePlayerController(
      initialVideoId: vedioID1!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  Widget CustomAppBar() {
    return SizedBox(
      // color: Colors.white,
      height: 75,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SevenYearsPage(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 16,
              color: Colors.white,
            ),
          ),
          Text(
            Level.levelsList[widget.level].title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
