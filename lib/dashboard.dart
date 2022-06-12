import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'count_controller.dart';

class Dashboard extends GetResponsiveView<CountController> {
  Dashboard() : super(alwaysUseBuilder: false);

  @override
  Widget phone() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get View',
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get View',
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get View',
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
