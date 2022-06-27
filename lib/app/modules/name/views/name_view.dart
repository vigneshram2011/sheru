// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/name_controller.dart';

class NameView extends StatelessWidget {
  const NameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let Us Get to Know Your Name!'),
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
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.BIRTHDAY),
              child: const Text(
                'Continue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
