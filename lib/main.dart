// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'student.dart';
import 'my_controller.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Controller Lifecycle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controller Lifecycle'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                initState: (_) => myController.increment(),
                dispose: (_) => myController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    'Value: ${controller.count}',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurpleAccent,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
