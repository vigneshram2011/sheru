import 'package:get/get.dart';

import '../controllers/ssn_controller.dart';

class SsnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SsnController>(
      () => SsnController(),
    );
  }
}
