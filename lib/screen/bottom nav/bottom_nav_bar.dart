import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:bottom_bar_matu/bottom_bar_label_slide/bottom_bar_label_slide.dart';
import 'package:ebusiness/screen/Job/job_screen.dart';
import 'package:ebusiness/screen/bottom%20nav/controller/bottom_nav_controller.dart';
import 'package:ebusiness/screen/home%20screen/home_screen.dart';
import 'package:get/get.dart';

import '../../const/export.dart';

class BottomNavBar extends GetView<BottomNavBarController> {
  const BottomNavBar({Key? key}) : super(key: key);
  static const routeName = '/bottomnavbar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarLabelSlide(
        selectedIndex: controller.currentIndex.value,
        items: [
          BottomBarItem(iconData: Icons.home, label:'Home'),
          BottomBarItem(iconData: Icons.work_history_outlined, label: 'Job'),
          BottomBarItem(iconData: Icons.account_circle, label: 'Account'),
          BottomBarItem(iconData: Icons.settings, label:'Settings'),
        ],
        onSelect: (index) {
          controller.currentIndex.value = index;
        },
      ),
      body: Obx(() {
        return  IndexedStack(
          index: controller.currentIndex.value,
          children: [
            const HomeScreen(),
             JobScreen(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        );
      }),
    );
  }
}