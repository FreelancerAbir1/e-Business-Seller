import 'package:ebusiness/const/color.dart';
import 'package:flutter/material.dart';

class PrimaryIcons extends StatelessWidget {
  const PrimaryIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 02,
          )),
      child: Image.asset(
        'assets/icons/main_logo.jpg',
      ),
    );
  }
}
