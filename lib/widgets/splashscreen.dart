import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import '../homescreen.dart';

class SplashScreen extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/loadingscreen.json'),
        //  Column(children: [
        //   Image.asset(
        //     'assets/aws.png',
        //     width: 100,
        //     height: 100,
        //   ),
        //   const Text(
        //     'Property Financial Calculator.',
        //     style: TextStyle(
        //         fontSize: 30,
        //         fontWeight: FontWeight.bold,
        //         color: Color(0xFF3c3c3c)), //Replace # with 0xFF
        //   ),
        // ]),
        splashIconSize: 190, //Shifting the icon up and down
        backgroundColor: Colors.white,
        duration: 3000, //duration to next page
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        animationDuration: const Duration(seconds: 1),
        nextScreen: HomeScreen());
  }
}
