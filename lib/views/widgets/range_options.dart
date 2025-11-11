import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Color(0xffE8E8E8)),
      ),
      child: Row(
        children: [
          Text("Monthly", style: AppStyles.styleMedium16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.57079633,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
