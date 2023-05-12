import 'package:ebusiness/responsive/responsive.dart';
import 'package:ebusiness/screen/random%20widget/primary_icon.dart';
import 'package:ebusiness/screen/splash%20screen/component/app_name.dart';
import 'package:ebusiness/screen/splash%20screen/component/version_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../const/string.dart';
import '../device/mobile.dart';
import '../device/tablet.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Mobile(),
        tablet: Tablet(),
        desktop: Text('DeskTop Not Available'));
  }
}
