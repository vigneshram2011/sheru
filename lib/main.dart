// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';
import 'student.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var student = Student();
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
                  'Name: ${student.name.value}',
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
                child: Text('Upper'),
                onPressed: () {
                  student.name.value = student.name.value.toUpperCase();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
