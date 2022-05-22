// ignore_for_file: unused_label

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Testing'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Show Snackbar'),
              onPressed: () {
                Get.snackbar(
                  "My name is Sheru the tiger.",
                  "My master's name is Vignesh.",
                  colorText: Colors.deepPurple,
                  backgroundColor: Colors.greenAccent,
                  borderRadius: 30,
                  maxWidth: 700,
                  backgroundGradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                  ),
                  boxShadows: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      offset: Offset(10, 10),
                    ),
                  ],
                  forwardAnimationCurve: Curves.bounceInOut,
                  duration: Duration(seconds: 10),
                  reverseAnimationCurve: Curves.bounceInOut,
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  mainButton: TextButton(
                    onPressed: () {
                      print('Hello World!');
                    },
                    child: Text('Print Message in Console!'),
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                  onTap: (val) {
                    print('Snackbar Clicked!');
                  },
                  overlayBlur: 5,
                  userInputForm: Form(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Please enter your full name.',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
