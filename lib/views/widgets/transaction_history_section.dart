import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_headline.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeadline(),
        SizedBox(height: 20,),
        Text("13 April 2022",style: AppStyles.styleMedium16(context).copyWith(color: Color(0xffA4A4A4)),),
        SizedBox(height: 16,),
        TransactionHistoryView()
      ],
    );
  }
}
