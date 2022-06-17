import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'username.dart';
import 'code.dart';
import 'name.dart';
import 'birthday.dart';
import 'ssn.dart';
import 'main.dart';

void main() => runApp(MyApp());

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Sheru",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sheru"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
