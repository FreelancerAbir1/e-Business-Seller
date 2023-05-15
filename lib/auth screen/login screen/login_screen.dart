import 'package:get/get.dart';

import '../../const/export.dart';
import 'component/body.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  static const routeName = '/loginscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Body()
    );
  }
}

