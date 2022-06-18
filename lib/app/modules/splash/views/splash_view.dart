// ignore_for_file: depend_on_referenced_packages, unused_import, non_constant_identifier_names

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/modules/username/views/username_view.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import 'package:page_transition/page_transition.dart';
import '../controllers/splash_controller.dart';
import 'dart:async';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        home: AnimatedSplashScreen(
          duration: 6000,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(''),
              const Text(
                'Flight, the BEST Kids Investing App Around!',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
            ],
          ),
          nextScreen: const SecondScreen(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.white,
        ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: AnimatedSplashScreen(
          duration: 6000,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(''),
              const Text(
                'Easy, Fast, and Effective!',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
            ],
          ),
          nextScreen: const ThirdScreen(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.white),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        home: AnimatedSplashScreen(
            duration: 6000,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(''),
                const Text(
                  'More Than a Hundred New Features Available!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ],
            ),
            nextScreen: const FourthScreen(),
            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.white));
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        home: AnimatedSplashScreen(
            duration: 6000,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(''),
                const Text(
                  'Clear and Understandable Investing Tracking!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ],
            ),
            nextScreen: const FifthScreen(),
            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.white));
  }
}

class FifthScreen extends StatelessWidget {
  const FifthScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        home: AnimatedSplashScreen(
            duration: 6000,
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(''),
                const Text(
                  'Your Exciting Journey Starts Now!!!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
              ],
            ),
            nextScreen: const UsernameView(),
            splashTransition: SplashTransition.slideTransition,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
            backgroundColor: Colors.white));
  }
}
