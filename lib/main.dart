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
      title: 'Workers',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Workers'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () => myController.increment(),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (val) {
                    myController.increment();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
