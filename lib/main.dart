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
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                init: MyController(),
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
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
