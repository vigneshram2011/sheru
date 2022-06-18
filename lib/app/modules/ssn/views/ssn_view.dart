import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ssn_controller.dart';

class SsnView extends GetView<SsnController> {
  const SsnView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World.'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SsnView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
