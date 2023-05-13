import 'package:ebusiness/auth%20screen/login%20screen/controller/controller.dart';
import 'package:ebusiness/screen/Job/controller.dart';
import 'package:ebusiness/screen/bottom%20nav/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavBarController());
    Get.lazyPut(() => LoginScreenController());
    Get.lazyPut(() => JobScreenController());
  }
}