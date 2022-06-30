// ignore_for_file: depend_on_referenced_packages, unused_import, non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/modules/username/views/username_view.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/splash_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:math';

final pages = [
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/flight.gif'),
      const Text('Flight, the Next Best Kids Investing App!',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24)),
      ElevatedButton(
        child: const Text('Sign Up'),
        onPressed: () => Get.toNamed(Routes.USERNAME),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/easy_fast_effective.gif'),
      const Text('Easy, Fast and Effective!',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24))
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/new_features.gif'),
      const Text('More Than a Hundred New Features Available!',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24))
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/invest_tracking.gif'),
      const Text('Clear and Understandable Investment Tracking!',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24))
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/images/get_started.gif'),
      const Text('Your Exciting Journey Starts Now!',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 24))
    ],
  ),
];

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
      ),
    );
  }
}
