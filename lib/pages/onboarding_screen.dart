import 'package:flutter/material.dart';
import 'package:mini_makers/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // cotroller to track pages
  PageController _controller = PageController();
  // track if we are in the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              // change value of bool when index = 2
              onLastPage = (index == 2);
            });
          },
          children: [
            Container(
              color: Colors.pink,
              child: Center(child: Text('Page One')),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              child: Center(child: Text('Page Two')),
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: Center(child: Text('Page Three')),
            ),
          ],
        ),
        // dot indicator
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text('Skip'),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              // next or done
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ));
                      },
                      child: Text('Done'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Text('Next'),
                    ),
            ],
          ),
        ),
      ],
    ));
  }
}
