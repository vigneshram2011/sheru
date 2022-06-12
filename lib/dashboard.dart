import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'count_controller.dart';

class Dashboard extends GetResponsiveView<CountController> {
  Dashboard() : super(alwaysUseBuilder: false);

  @override
  Widget phone() => Icon(Icons.phone_iphone_rounded, size: 75);

  @override
  Widget tablet() => Icon(Icons.tablet, size: 125);

  @override
  Widget desktop() => Icon(Icons.desktop_mac, size: 175);
}
