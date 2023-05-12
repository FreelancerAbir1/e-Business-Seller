


import '../../../const/export.dart';
import '../device/mobile.dart';
import '../device/tablet.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Mobile(),
      tablet: Tablet(),
      desktop: Text('Not Design'),
    );
  }
}

