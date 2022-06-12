// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheru/dashboard.dart';
import 'home.dart';
import 'package:get_storage/get_storage.dart';
import 'count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<CountController> {
  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return GetMaterialApp(
      title: 'Get View',
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text(
            'Get View',
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Value: ${controller.count}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text('Increment'),
                onPressed: () {
                  print(controller.hashCode);
                  controller.increment();
                },
              ),
              Dashboard(),
            ],
          ),
        ),
      ),
    );
  }
}
