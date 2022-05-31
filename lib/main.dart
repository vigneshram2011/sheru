import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'next_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(
          name: '/next_screen',
          page: () => NextScreen(),
          transition: Transition.leftToRightWithFade,
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Go to Home'),
                onPressed: () {
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
