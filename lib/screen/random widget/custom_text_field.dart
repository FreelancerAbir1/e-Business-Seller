import 'package:flutter/material.dart';

import '../../const/color.dart';
import '../../const/style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.label,
      this.hint,
      this.controller,
      this.validator,
      this.focusNode,
      this.sufficIcon,
      this.onFieldSubmitted,
      this.textInputAction,
      this.obscureText = false,
      this.onChanged,
      this.keyboardType});

  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Widget? sufficIcon;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: sufficIcon,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        enabled: true,
        focusColor: kPrimaryColor,
        labelText: label,
        focusedBorder: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        hintStyle: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: kTextColor),
        labelStyle: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: kPrimaryColor, fontFamily: bold),
        hintText: hint,
        filled: true,
        fillColor: kFilledColor,
      ),
    );
  }
}
