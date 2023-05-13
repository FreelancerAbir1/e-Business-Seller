import 'package:ebusiness/auth%20screen/login%20screen/controller/controller.dart';
import 'package:get/get.dart';

import '../../const/export.dart';
import 'component/body.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  static const routeName = '/loginscreen';

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: Responsive.isMobile(context) && controller.isScroll.value
              ? AppBar()
              : null,
          body: Body()
      );
    });
  }
}

