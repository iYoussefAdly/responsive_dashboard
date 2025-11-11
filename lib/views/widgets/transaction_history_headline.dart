import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class TransactionHistoryHeadline extends StatelessWidget {
  const TransactionHistoryHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Transaction History",style: AppStyles.styleSemiBold20(context),),
        Spacer(),
        Text("See all",style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff4BB0E9)),)
      ],
    );
  }
}