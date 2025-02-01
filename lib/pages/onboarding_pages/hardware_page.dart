import 'package:flutter/material.dart';

class HardwarePage extends StatelessWidget {
  const HardwarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade900,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/lap.png',
                  width: 150,
                ),
                Image.asset(
                  'assets/print.png',
                  width: 150,
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'What is Hardware ?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'Any electric device can touch it',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
