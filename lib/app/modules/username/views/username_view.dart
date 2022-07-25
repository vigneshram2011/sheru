import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_get_cli_app/app/routes/app_pages.dart';
import '../controllers/username_controller.dart';

class UsernameView extends GetView<UsernameController> {
  const UsernameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Please enter your email and password below.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: const Text(
                'Enter Phone Details Instead',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Continue'),
              onPressed: () => Get.toNamed(Routes.CODE),
            ),
          ],
        ),
      ),
    );
  }
}
