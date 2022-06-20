// ignore_for_file: depend_on_referenced_packages, unused_import, non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/modules/splash/views/liquid_swipe.dart';
import 'package:login_get_cli_app/app/modules/username/views/username_view.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/splash_controller.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:math';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages,
        fullTransitionValue: 300,
        enableLoop: true,
        slideIconWidget: const Icon(Icons.arrow_back),
        positionSlideIcon: 0.8,
        waveType: WaveType.circularReveal,
      ),
    );
  }
}
