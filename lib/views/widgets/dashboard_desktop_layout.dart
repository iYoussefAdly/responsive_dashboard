import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_desktop_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history_and_income_desktop_section.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceDesktopSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 2,
                      child: MyCardAndTransactionHistoryAndIncomeDesktopSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}







