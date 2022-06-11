// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Storage & Email Validation',
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text(
            'Get Storage & Email Validation',
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(   
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailEditingController,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Write Email'),
                  onPressed: () {
                    if (GetUtils.isEmail(emailEditingController.text)) {
                      storage.write('email', emailEditingController.text);
                      Get.snackbar(
                        'Success',
                        'See Console for Email',
                        backgroundColor: Colors.black,
                        colorText: Colors.greenAccent,
                        snackPosition: SnackPosition.TOP,
                        forwardAnimationCurve: Curves.bounceInOut,
                        reverseAnimationCurve: Curves.bounceInOut,
                        animationDuration: Duration(seconds: 2),
                        duration: Duration(seconds: 5),
                      );
                    } else {
                      Get.snackbar(
                        'Error',
                        'Provide Email in Valid Format.',
                        backgroundColor: Colors.yellowAccent,
                        colorText: Colors.red,
                        snackPosition: SnackPosition.TOP,
                        forwardAnimationCurve: Curves.bounceInOut,
                        reverseAnimationCurve: Curves.bounceInOut,
                        animationDuration: Duration(seconds: 2),
                        duration: Duration(seconds: 5),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                child: Text('Read Email'),
                onPressed: () {
                  print('Email: ${storage.read('email')}');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
