import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/models/latest_transaction_item_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.latestTransactionItemModel});
  final LatestTransactionItemModel latestTransactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffF8F8F8),
      child: ListTile(
        leading: Image.asset(latestTransactionItemModel.image),
        title: Text(latestTransactionItemModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          latestTransactionItemModel.email,
          style: AppStyles.styleMedium20(context).copyWith(color: Color(0xffA5A5A5)),
        ),
      ),
    );
  }
}
