import 'package:ebusiness/const/color.dart';
import 'package:flutter/material.dart';

class PrimaryIcons extends StatelessWidget {
  const PrimaryIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 02,
            )),
        child: Image.asset(
          'assets/icons/logo.png',
          color: kBlue,
        ),
      ),
    );
  }
}
