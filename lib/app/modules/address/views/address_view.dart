import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/address_controller.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddressView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddressView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
