import 'package:flutter/material.dart';
import 'package:mini_makers/pages/home_page.dart';
import 'package:mini_makers/pages/onboarding_pages/first_page.dart';
import 'package:mini_makers/pages/onboarding_pages/hardware_page.dart';
import 'package:mini_makers/pages/onboarding_pages/software_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // cotroller to track pages
  final PageController _controller = PageController();
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
            FirstPage(),
            SoftwarePage(),
            HardwarePage(),
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
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ScrollingDotsEffect(),
              ),
              // next or done
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, '/homePage');
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linearToEaseOut,
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ],
    ));
  }
}
