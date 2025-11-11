import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceDesktopSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceDesktopSection();

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}