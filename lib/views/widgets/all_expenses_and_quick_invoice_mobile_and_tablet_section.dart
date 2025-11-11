import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceMobileAndTabletSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceMobileAndTabletSection();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: CustomBackgroundContainer(
              child: AllExpenses(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: CustomBackgroundContainer(
              child: QuickInvoice(),
            ),
          ),
        ],
      ),
    );
  }
}