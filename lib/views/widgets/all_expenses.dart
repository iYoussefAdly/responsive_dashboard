import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_items_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(height: 17),
            AllExpensesItemsView(),
          ],
        ),
      ),
    );
  }
}
