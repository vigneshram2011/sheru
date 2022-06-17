// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            'Hello World.',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            child: const Text('Go to Code Screen'),
            onPressed: () => Get.to(Routes.CODE),
          ),
        ],
      )),
    );
  }
}
