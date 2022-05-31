import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is the home screen.",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                "Next Screen",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                "Back to Main",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
