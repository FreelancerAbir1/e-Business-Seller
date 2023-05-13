import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import '../../../const/export.dart';

class LoginScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxBool isScroll = true.obs;
  RxBool isPassword = false.obs;

  //password visiblity controlle
  isPasswordMethod() {
    isPassword.value = !isPassword.value;
  }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        isScroll.value = true;
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isScroll.value = false;
      }
    });
  }
}
