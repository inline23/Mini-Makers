import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:mini_makers/level.dart';
import 'package:mini_makers/pages/lessons/sevenYears/seven_years_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class IntroScratchPage extends StatefulWidget {
  int level;
  IntroScratchPage({super.key, required this.level});

  @override
  State<IntroScratchPage> createState() => _IntroScratchPageState();
}

class _IntroScratchPageState extends State<IntroScratchPage> {
  final vedioUrl = 'https://www.youtube.com/watch?v=98awWpkx9UM';

  late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      // appBar: AppBar(
      //   title: Text('Intro to Scratch'),
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.white,
      //   elevation: 1,
      // ),
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
              'What is Scratch',
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
              'Scratch is a block-based visual programming language primarily designed for beginners',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/createGame.png',
                  width: 200,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          // Question Tile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: McqTile(
              level: widget.level,
              correctAnswer: 'a',
              questionTitle: 'Scratch Based On :',
              answerA: 'block-based',
              answerB: 'programmin lang',
              answerC: 'Prompet response',
              answerD: 'OOP',
              nextLevelPath: '/dragAndDropPage',
              lessonId: 0,
            ),
          ),
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
