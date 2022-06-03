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
  var student = Student();
  MyController myController = Get.put(MyController());
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
              Obx(
                () => Text(
                  'Name: ${myController.student.name}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Upper Case'),
                onPressed: () {
                  student.name.value = student.name.value.toUpperCase();
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Lower Case'),
                onPressed: () {
                  student.name.value = student.name.value.toLowerCase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
