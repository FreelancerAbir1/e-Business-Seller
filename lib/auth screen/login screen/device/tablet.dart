import 'package:get/get.dart';

import '../../../const/export.dart';

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: ListView(
        shrinkWrap: true,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: CustomLargeText(
                  text: 'Welcome Back', color: kPrimaryColor)),
          Align(alignment: Alignment.topLeft, child: PrimaryIcons()),
          Container(
            height: 350,
            width: Get.width,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                    hint: 'Enter you Email', sufficIcon: Icon(Icons.mail)),
                CustomTextField(
                    hint: 'Enter you Password',
                    sufficIcon: Icon(Icons.visibility)),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: kPrimaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  text: 'Sign In',
                  color: kPrimaryColor,
                ),
                SignUpButton(
                  onTap: () {},
                  text: 'Dont\'t have an account?',
                  txt: ' Sign Up',
                ),
                CustomButton(
                  onTap: () {},
                  text: 'Sign Up',
                  color: kPrimaryColor.shade300,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AdminText(text: '@Sakibadmin'),
          ),
        ],
      ),
    );
  }
}