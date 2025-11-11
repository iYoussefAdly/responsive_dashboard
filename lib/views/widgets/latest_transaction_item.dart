import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/models/latest_transaction_item_model.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.latestTransactionItemModel});
  final LatestTransactionItemModel latestTransactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF2F2F2)),
        child: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(children: [Image.asset(latestTransactionItemModel.image),
          SizedBox(width: 12,),
          Column(
            children: [
              Text(latestTransactionItemModel.title,style: AppStyles.styleSemiBold16(context),),
              SizedBox(height: 6,),
              Text(latestTransactionItemModel.email,style: AppStyles.styleRegular12(context),),
            ],
          )
          ]),
        ),
      ),
    );
  }
}
