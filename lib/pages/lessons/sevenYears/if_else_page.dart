import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class IfElsePage extends StatefulWidget {
  int level;
  IfElsePage({super.key, required this.level});

  @override
  State<IfElsePage> createState() => _LoopPageState();
}

class _LoopPageState extends State<IfElsePage> {
  final vedioUrl = 'https://youtu.be/Sb-1xWrmr6Q?si=FvrWQSblMa--gL_v';
  late YoutubePlayerController _controller;
  late VideoPlayerController _videoController;
  late VideoPlayerController _controlller;
  late Future<void> _initlizeVideoPlayerFuture;

  ChewieController? _chewieController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('If Condition'),
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
              'What is If Else or Condition ?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            // content
            Text(
              'Some times when i want to do Action for example maybe i need to check the value of somehting else Before take my action ',
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
                  'assets/simpleIf.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "The example in the picture is the most famous way I can explain the conditional statement to you. This block means: if he has school, he wakes up at 6 a.m.",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),

            Text(
              'Show this Example',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/ifelse ex.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'When GreenFlag Clicked\nforever\n this make our game always chick about anything put inside it\nif \'key reight arrow passed?\'\n if user click on rigth arrow -> then\n move 10 steps\nUnder Else conditon we do the same thing for left arrow but when we move we back -10 ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            // cat animation
            // const SizedBox(height: 20),
            // SizedBox(
            //   width: 200,
            //   height: 250,
            //   child: _chewieController != null &&
            //           _chewieController!
            //               .videoPlayerController.value.isInitialized
            //       ? Chewie(controller: _chewieController!)
            //       : Center(child: CircularProgressIndicator()),
            // ),
            // Question Tile
            const SizedBox(height: 20),
            FutureBuilder(
              future: _initlizeVideoPlayerFuture,
              builder: (context, snapShot) {
                if (snapShot.connectionState == ConnectionState.done) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 250,
                          child: AspectRatio(
                            aspectRatio: _controlller.value.aspectRatio,
                            child: VideoPlayer(_controlller),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (_controlller.value.isPlaying) {
                                _controlller.pause();
                              } else {
                                _controlller.play();
                              }
                            });
                          },
                          icon: Icon(
                            _controlller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            McqTile(
              level: widget.level,
              correctAnswer: 'b',
              questionTitle: 'In Example 1 cat will move when :',
              answerA: 'Space Click',
              answerB: 'Green Flag',
              answerC: 'No Move',
              answerD: 'Right Arrow',
              nextLevelPath: '/dragAndDropPage',
              lessonId: 2,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // YouTube Player initialization
    final vedioID = YoutubePlayer.convertUrlToId(vedioUrl);
    _controller = YoutubePlayerController(
      initialVideoId: vedioID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    // Initialize Chewie video player
    _initializePlayer();
    _controlller = VideoPlayerController.asset('assets/ifScratch.mp4');
    _initlizeVideoPlayerFuture = _controlller.initialize();
    _controlller.setLooping(true);
    _controlller.setVolume(1.0);
  }

  Future<void> _initializePlayer() async {
    _videoController = VideoPlayerController.asset('assets/ifScratch.mp4');
    await _videoController.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: false,
      looping: false,
    );

    setState(() {});
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    _controlller.dispose();
    super.dispose();
  }
}
