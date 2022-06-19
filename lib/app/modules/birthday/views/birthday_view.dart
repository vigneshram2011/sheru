import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/birthday_controller.dart';

class BirthdayView extends GetView<BirthdayController> {
  const BirthdayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date of Birth'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Continue'),
              onPressed: () => Get.toNamed(Routes.ADDRESS),
            ),
          ],
        ),
      ),
    );
  }
}
