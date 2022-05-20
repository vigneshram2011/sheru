import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Testing'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Show Snackbar'),
              onPressed: () {
                Get.snackbar(
                  'My name is Sheru the tiger.',
                  'My master name is Vignesh.',
                  colorText: Colors.deepPurple,
                  backgroundColor: Colors.greenAccent,
                  borderRadius: 30,
                  maxWidth: 700,
                  animationDuration: Duration(seconds: 4),
                  backgroundGradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    ),
                  boxShadows: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      offset: Offset(10, 10),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
