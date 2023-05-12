

import 'package:get/get.dart';

import '../../const/export.dart';
import 'component/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = '/loginscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isMobile(context)? AppBar():null,
      body: Body()
    );
  }
}

