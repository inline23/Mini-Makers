import 'package:flutter/material.dart';
import 'package:mini_makers/components/mcq_tile.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final vedioUrl = 'https://www.youtube.com/watch?v=98awWpkx9UM';

  late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      appBar: AppBar(
        title: Text('Intro to Scratch'),
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
              'What is Scratch',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 5),
            // content
            Text(
              'Scratch is a block-based visual programming language primarily designed for beginners',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  'assets/createGame.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 25),
            // Question Tile
            McqTile()
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
