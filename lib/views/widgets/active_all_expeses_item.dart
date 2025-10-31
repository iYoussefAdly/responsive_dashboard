import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart' show AppStyles;
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';
class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0xff4CB1EA),
        border: Border.all(width: 1, color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            imageColor:Color(0xffF7F7F7),
            iconBackground: Color(0xff5CB7EA),
            icon: allExpensesItemModel.icon,
            arrowColor: Colors.white,),
          SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16.copyWith(color:Colors.white)),
          SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyles.styleRegular14.copyWith(color: Colors.white)),
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
