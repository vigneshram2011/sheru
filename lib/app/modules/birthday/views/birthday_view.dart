import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/birthday_controller.dart';

class BirthdayView extends GetView<BirthdayController> {
  const BirthdayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BirthdayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BirthdayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
