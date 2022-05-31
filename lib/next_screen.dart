// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'This is the next screen.',
          style: TextStyle(color: Colors.purpleAccent, fontSize: 24),
        ),
      ),
    );
  }
}
