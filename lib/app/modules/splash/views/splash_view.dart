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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/flight.gif'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Flight, the BEST Kids Investing App Around!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () => Get.toNamed(Routes.USERNAME),
                ),
              ]),
          nextScreen: const UsernameView(),
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
              Image.asset('assets/images/easy_fast_effective.gif'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Easy, Fast, and Effective!',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: const Text('Signup'),
                onPressed: () => Get.toNamed(Routes.USERNAME),
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
                Image.asset('assets/images/new_features.gif'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'More Than a Hundred New Features Available!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () => Get.toNamed(Routes.USERNAME),
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
                Image.asset('assets/images/invest_tracking.gif'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Clear and Understandable Investment Tracking!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () => Get.toNamed(Routes.USERNAME),
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
                Image.asset('assets/images/get_started.gif'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Your Exciting Journey Starts Now!!!',
                  style: TextStyle(color: Colors.indigo, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () => Get.toNamed(Routes.USERNAME),
                ),
              ],
            ),
            nextScreen: const SplashView(),
            splashTransition: SplashTransition.slideTransition,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
            backgroundColor: Colors.white));
  }
}
