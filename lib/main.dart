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
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Internationization',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internationization'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello!'.tr,
                  style: TextStyle(fontSize: 25, color: Colors.redAccent)),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Hindi'),
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('Tamil'),
                onPressed: () {
                  myController.changeLanguage('ta', 'IN');
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('French'),
                onPressed: () {
                  myController.changeLanguage('fr', 'FR');
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('English'),
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
