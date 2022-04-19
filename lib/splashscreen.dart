import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test_evaluation/main.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
      const SplashScreen({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return AnimatedSplashScreen(
          splash: 'assets/images/Logo.png',
          nextScreen: const HomePage(),
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.bottomToTop,

        );
      }
    }
