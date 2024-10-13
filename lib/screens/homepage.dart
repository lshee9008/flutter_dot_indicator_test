import 'package:flutter/material.dart';
import 'package:flutter_dot_indicator_test/pages/page_1.dart';
import 'package:flutter_dot_indicator_test/pages/page_2.dart';
import 'package:flutter_dot_indicator_test/pages/page_3.dart';
import 'package:flutter_dot_indicator_test/pages/page_4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
            ),
          ),
        ],
      ),
    );
  }
}
