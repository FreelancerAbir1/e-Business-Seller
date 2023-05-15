
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../const/export.dart';

class JobScreen extends GetView<JobScreenController> {
  JobScreen({Key? key}) : super(key: key);

  var dateString = DateFormat.yMd();

  Widget float1() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn1",
        tooltip: 'First button',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget float2() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn2",
        tooltip: 'Second button',
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedFloatingActionButton(
          //Fab list
          fabButtons: <Widget>[
            float1(),
            float2(),
          ],
          key: controller.key,
          colorStartAnimation: Colors.blue,
          colorEndAnimation: Colors.red,
          animatedIconData: AnimatedIcons.menu_close //To principal button
          ),
      appBar: AppBar(
        automaticallyImplyLeading: false, // Disable back button
        title: AutoSizeText(
          'Products',
          style: GoogleFonts.acme(fontSize: 20.sp),
          maxLines: 1,
        ),
        actions: [Text('10/12/2023')],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            '+8801722734871',
            style: GoogleFonts.alata(),
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_month),
                  Text('12/10/2022'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check),
                  Text(
                    'Unpaid',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ],
              ),
            ],
          ),
          trailing: Text(
            '\$12.20',
            style: GoogleFonts.acme(fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
