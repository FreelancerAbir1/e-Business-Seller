

 import 'package:get/get.dart';

import '../../../const/export.dart';
import 'device/mobile.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: Mobile(), tablet: Text('Tablet'), desktop: Text('Web'));
  }
}