import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/helpers/helpers.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xffA3A3A3)),
        hintText: hintText,
        fillColor: Color(0xffF0F0F0),
        filled: true,
        enabledBorder: buildBorder(),
      ),
    );
  }
}
