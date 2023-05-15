import 'package:get/get.dart';

import '../../const/export.dart';

class BottomNavBar extends GetView<BottomNavBarController> {
  BottomNavBar({Key? key}) : super(key: key);
  static const routeName = '/bottomnavbar';

  //Bottom navigation bar item=================================
  List<BottomBarItem> items = [
    BottomBarItem(iconData: Icons.dashboard_customize, label: 'Dashboard'),
    BottomBarItem(iconData: Icons.work_history_outlined, label: 'Job'),
    BottomBarItem(iconData: Icons.account_circle, label: 'Account'),
    BottomBarItem(iconData: Icons.settings, label: 'Settings')
  ];

  // Selected Screens
  List<Widget> screens = [
    //Dashboard screen
    DashBoard(),
    //Job Screen
    JobScreen(),
    //next screen
    Container(color: Colors.blue),
    //next screen
    Container(color: Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBarLabelSlide(
          selectedIndex: controller.currentIndex.value,
          items: items,
          onSelect: (index) {
            controller.currentIndex.value = index;
          },
        ),
        body: Obx(() => IndexedStack(
            index: controller.currentIndex.value, children: screens)));
  }
}
