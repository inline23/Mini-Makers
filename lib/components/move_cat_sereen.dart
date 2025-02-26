// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MovingCatScreen extends StatefulWidget {
  const MovingCatScreen({super.key});

  @override
  _MovingCatScreenState createState() => _MovingCatScreenState();
}

class _MovingCatScreenState extends State<MovingCatScreen> {
  double _leftPosition = 50.0; // Initial position

  void _moveCat() {
    setState(() {
      _leftPosition += 40; // Move 40 pixels to the right
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 500),
          left: _leftPosition,
          top: 150, // Fixed vertical position
          child: Image.asset(
            'assets/cat.png',
            width: 100,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: _moveCat,
            style: ButtonStyle(),
            child: Text(
              "Start Move",
            ),
          ),
        ),
      ],
    );
  }
}
