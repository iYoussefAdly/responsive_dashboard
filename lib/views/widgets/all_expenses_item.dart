import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_all_expeses_item.dart';
import 'package:responsive_dashboard/views/widgets/in_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel) :InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel,);
  }
}

