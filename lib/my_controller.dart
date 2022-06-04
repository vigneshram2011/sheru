import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up task.');
  }

  @override
  void onInit() {
    print('Init called.');
    super.onInit();
  }

  @override
  void onClose() {
    print('Ready called.');
    super.onClose();
  }
}
