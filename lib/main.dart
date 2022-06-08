// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'student.dart';
import 'my_controller.dart';
import 'messages.dart';
import 'service.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting Devices...');
  await Get.putAsync<Service>(() async => await Service());
  print('All Services Started...');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Service',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GetX Service',
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
