
import 'package:ebusiness/screen/random%20widget/custom_medium_text.dart';
import 'package:ebusiness/screen/random%20widget/custom_small_text.dart';
import 'package:get/get.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../const/export.dart';

class Mobile extends GetView<LoginScreenController> {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          controller: controller.scrollController,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child:
                    CustomLargeText(text: 'Welcome Back', color: kPrimaryColor)),
            Align(alignment: Alignment.topLeft, child: PrimaryIcons()),
            Container(
              height: Get.height/2.4,
              width: Get.width,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: kLightColor,
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
                Obx(() =>    CustomTextField(
                    obscureText: controller.isPassword.value,
                    hint: 'Enter you Password',
                    sufficIcon: IconButton(
                      onPressed: () {
                        controller.isPasswordMethod();
                      },
                      icon: controller.isPassword.value?Icon(Icons.visibility): Icon(Icons.visibility_off),
                    ),
                  ),),
                  CustomMediumText(
                    onTap: () {
                    //  Get.toNamed(ForgotScreen.routeName);
                    },
                    text: 'Forget Password',
                    alignMent: Alignment.centerRight,
                  ),
                  CustomButton(
                    onTap: () {
                      Get.toNamed(BottomNavBar.routeName);
                    },
                    text: 'Sign In',
                    color: kPrimaryColor,
                  ),
                  const CustomSmallText(
                      text: 'Don\'t have an account?', alignMent: Alignment.center),
                  CustomButton(
                    onTap: () {},
                    text: 'Sign Up',
                    color: kPrimaryColor.shade300,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            SignInButton(
              Buttons.google,
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.linkedIn,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.twitter,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.gitHub,
                  mini: true,
                  onPressed: () {},
                ),
                SignInButton(
                  Buttons.facebook,
                  mini: true,
                  onPressed: () {},
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AdminText(text: '@Sakibadmin'),
            ),
          ],
        ),
      ),
    );
  }
}
