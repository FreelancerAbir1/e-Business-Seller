import 'package:auto_size_text/auto_size_text.dart';
import 'package:ebusiness/const/color.dart';
import 'package:ebusiness/screen/random%20widget/custom_button.dart';
import 'package:ebusiness/screen/random%20widget/custom_large_text.dart';
import 'package:ebusiness/screen/random%20widget/custom_text_field.dart';
import 'package:ebusiness/screen/random%20widget/primary_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
              height: 300,
              width: Get.width,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                      hint: 'Enter you Email', sufficIcon: Icon(Icons.mail)),
                  CustomTextField(
                      hint: 'Enter you Password',
                      sufficIcon: Icon(Icons.password)),
                  CheckboxListTile(
                    value: true,
                    onChanged: (v) {},
                    controlAffinity: ListTileControlAffinity.leading,
                    secondary: Text(
                      'ForgetPassword',
                      style: TextStyle(color: kLightColor),
                    ),
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Log In',
                    color: kBlue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AutoSizeText(
                '@Sakibadmin',
                style: TextStyle(color: kTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
