import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheru/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sheru Mail',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sheru Mail'),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
