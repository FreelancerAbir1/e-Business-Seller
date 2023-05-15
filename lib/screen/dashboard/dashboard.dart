import 'package:get/get.dart';

import '../../const/export.dart';
import '../../const/style.dart';
import 'component/body.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Disable back button
        title: AutoSizeText(
          'Dashboard',
          style: GoogleFonts.acme(fontSize: 20.sp),
          maxLines: 1,
        ),
        actions: [
          Text(
            'Sat/Nov/2023',
            style: GoogleFonts.acme(fontSize: 18.sp),
            maxLines: 1,
          )
        ],
      ),
      body: Body(),
    );
  }
}

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
    required this.text,
    required this.number,
    required this.image,
  });

  final String text;
  final int number;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(  8.sp),
      child: Container(
        height: 100,
        width: 200,
        padding: EdgeInsets.all(20.sp),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.abel(color: kLightColor, fontSize: 20.sp),
                ),
                Text(
                  number.toString(),
                  style: GoogleFonts.abel(
                      color: kLightColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              image,
              height: 50,
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
