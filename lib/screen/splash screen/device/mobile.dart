import 'package:ebusiness/screen/splash%20screen/component/app_name.dart';
import 'package:ebusiness/screen/splash%20screen/component/version_text.dart';

import '../../../const/export.dart';
import '../../../const/string.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        const PrimaryIcons(),
        const SizedBox(height: 05),
        const BusinessText(text: appName),
        const VersionText(appversion: appVersion),
        const VersionText(appversion: appAdmin),
        const Spacer(),
        const Align(
            alignment: Alignment.bottomCenter,
            child: CircularProgressIndicator()),
        SizedBox(height: 04.h)
      ],
    );
  }
}
