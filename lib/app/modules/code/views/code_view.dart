import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/code_controller.dart';

class CodeView extends GetView<CodeController> {
  const CodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
