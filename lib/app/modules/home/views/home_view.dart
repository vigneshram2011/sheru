import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Testing'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Show Snackbar'),
              onPressed: () {
                Get.snackbar('My name is Sheru.', 'My master is Vignesh.',
                    colorText: Colors.white,
                    backgroundColor: Colors.black,
                    borderRadius: 20,
                    borderColor: Colors.pinkAccent);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
