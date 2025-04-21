import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myrive/widgets/mascot.dart';
import 'package:myrive/widgets/mascot_title.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late Timer pageTimer;

  @override
  void initState() {
    super.initState();

    // implement any strategy to navigate to the next page
    // after the Rive assets have loaded
    pageTimer = Timer(6.seconds, () {
      Navigator.pushReplacementNamed(context, '/mascot');
    });
  }

  @override
  void dispose() {
    pageTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(left: 0, right: 0, top: 200, child: MascotTitle())
              .animate()
              .scaleXY(
                alignment: Alignment.bottomCenter,
                begin: 0.5,
                end: 1.5,
                curve: Curves.easeInOut,
                duration: 1.seconds,
              )
              .fadeIn(curve: Curves.easeInOut, duration: 1.seconds),

          Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: -500,
                child: Transform.scale(scale: 1.8, child: Mascot()),
              )
              .animate()
              .slideY(
                //  alignment: Alignment.bottomCenter,
                begin: 0.45,
                end: 0,
                curve: Curves.easeInOut,
                duration: 2.seconds,
              )
              .fadeIn(curve: Curves.easeInOut, duration: 2.seconds),

          /* Positioned(
            left: 0,
            right: 0,
            bottom: 250,
            child: MascotTitle()
                .animate()
                .scaleXY(
                  alignment: Alignment.bottomCenter,
                  begin: 0.5,
                  end: 4.0,
                  curve: Curves.easeInOut,
                  duration: 2.seconds,
                )
                .fadeIn(curve: Curves.easeInOut, duration: 1.seconds),
          ), // 1
       */
        ],
      ),
    );
  }
}
