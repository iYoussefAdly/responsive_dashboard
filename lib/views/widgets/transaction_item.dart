import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF0F0F0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16.copyWith(color: Color(0xffA3A3A3)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithDrawl
                ? Color(0xffE96E5A)
                : Color(0xff78D076),
          ),
        ),
      ),
    );
  }
}
