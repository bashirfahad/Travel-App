import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(seconds: 3), vsync: this);

    // Initialize the animation
    _controller.repeat(); // Replace with your desired animation behavior
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (bookmarked == false) {
              bookmarked = true;
              _controller.forward();
            } else {
              bookmarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.asset("assets/Animation - 1698822334073.json", controller: _controller),
        ),
      ),
    );
  }
}
