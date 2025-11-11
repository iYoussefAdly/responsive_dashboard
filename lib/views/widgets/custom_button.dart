import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff4BB1E9)
      ),
      child: Center(child: Text("Send Money",style: AppStyles.styleSemiBold18(context),)),
    );
  }
}