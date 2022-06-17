import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hello World.',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: const Text('Signup'),
              onPressed: () => Get.toNamed(Routes.SSN),
            ),
          ],
        ),
      ),
    );
  }
}
