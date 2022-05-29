import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';
import 'video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Go to PDF Viewer"),
                onPressed: () {
                  Get.to(
                    Home(),
                  );
                },
              ),
              ElevatedButton(
                child: Text("Go to Video Player"),
                onPressed: () {
                  Get.to(
                    Video(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
