import 'student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var student = Student();
  void convertToUpperCase() {
    student.name.value = student.name.value.toUpperCase();
  }
  void convertToLowerCase() {
    student.name.value = student.name.value.toLowerCase();
  }
}
