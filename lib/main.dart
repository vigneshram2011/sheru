// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'student.dart';
import 'my_controller.dart';
import 'messages.dart';
import 'service.dart';
import 'all_controller_binding.dart';
import 'my_app_controller_binding.dart';
import 'home_controller_binding.dart';
import 'home_controller.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Binding',
      getPages: [
        GetPage(
            name: '/home',
            page: () => Home(),
            binding: BindingsBuilder(() => Get.lazyPut<HomeControllerBinding>(
                () => HomeControllerBinding()))),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Binding',
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Value: ${Get.find<MyController>().count}',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text('Home'),
                onPressed: () {
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
