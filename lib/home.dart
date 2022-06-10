// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'home_controller.dart';
import 'home_controller_binding.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              (() => Text(
                    'Value: ${Get.find<HomeController>().count}',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                Get.find<HomeController>().increment();
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Back'),
              onPressed: () {
                Get.back;
              },
            ),
          ],
        ),
      ),
    );
  }
}
