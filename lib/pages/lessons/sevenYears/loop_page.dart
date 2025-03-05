import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LoopPage extends StatefulWidget {
  int level;
  LoopPage({super.key, required this.level});

  @override
  State<LoopPage> createState() => _LoopPageState();
}

class _LoopPageState extends State<LoopPage> {
  final vedioUrl = 'https://youtu.be/oWjiJIoG3nQ?si=XG_yBltvU39zRH2E';
  late YoutubePlayerController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Loops'),
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
              'What is Loop or Repeat ?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            // content
            Text(
              'when we want to do somthing need to repeat it like jump 5 times for emaple or print somthing 10 times. in this case we sholud to use loop\nThe loop helps us execute a specific command a number of times without the need to repeatedly type the command ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0),
            //   child: Text(
            //     'Example 1',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/loopex.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "Repeat Loop\nAny Event Dropped Under this Command will Repeat it 10 times\nForever loop: this loop without Condition to stop then the event never stop.",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),

            // cat animation
            // const SizedBox(height: 20),
            // Question Tile
            McqTile(
              level: widget.level,
              correctAnswer: 'b',
              questionTitle: 'The Block never Stop :',
              answerA: 'Repeat Loop',
              answerB: 'Forever Loop',
              answerC: 'Repeat UntilLoop',
              answerD: 'For Loop',
              nextLevelPath: '/ifElsePage',
              lessonId: 3,
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
