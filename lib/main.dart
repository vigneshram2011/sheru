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
      title: 'Unique ID',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unique ID'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: 'txtCount',
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
                height: 10,
              ),
              GetBuilder<MyController>(
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
                height: 15,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () => myController.increment(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
