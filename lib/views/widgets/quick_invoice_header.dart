import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice",style: AppStyles.styleSemiBold20,),
        Spacer(),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            shape: BoxShape.circle),
            child: Icon(Icons.add,color: Color(0xff4CB2EB),size: 18,),
        )
      ],
    );
  }
}