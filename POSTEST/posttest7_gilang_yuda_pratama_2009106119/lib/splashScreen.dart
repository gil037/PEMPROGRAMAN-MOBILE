import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:posttest7_gilang_yuda_pratama_2009106119/home.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0.0),
        child: Image(
          image: AssetImage('assets/cargo.png'),
        ),
      ),
      splashIconSize: 700,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      backgroundColor: Color.fromARGB(255, 246, 246, 233),
      pageTransitionType: PageTransitionType.rightToLeft,
      nextScreen: home(),
    );
  }
}
