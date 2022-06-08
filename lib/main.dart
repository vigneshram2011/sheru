// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'student.dart';
import 'my_controller.dart';
import 'messages.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController(), tag: 'instance1', permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dependency Injection',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dependency Injection',
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Click Me'),
                onPressed: () {
                  Get.find<MyController>().incrementCounter();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
