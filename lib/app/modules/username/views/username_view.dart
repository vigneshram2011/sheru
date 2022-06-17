import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/username_controller.dart';

class UsernameView extends GetView<UsernameController> {
  const UsernameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UsernameView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UsernameView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
