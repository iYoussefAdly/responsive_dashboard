import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:responsive_dashboard/core/utils/app_styles.dart' show AppStyles;
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(icon: allExpensesItemModel.icon),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16(context))),
          SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.date, style: AppStyles.styleRegular14(context))),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24(context))),
        ],
      ),
    );
  }
}
