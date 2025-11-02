import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 24),
            child: CustomBackgroundContainer(child: AllExpenses()),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: CustomBackgroundContainer(child: (QuickInvoice())),
          ),
        ],
      ),
    );
  }
}