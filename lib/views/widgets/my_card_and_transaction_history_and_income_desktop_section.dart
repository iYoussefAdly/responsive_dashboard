import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/chart_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/income_header_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_section.dart';
class MyCardAndTransactionHistoryAndIncomeDesktopSection extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncomeDesktopSection();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackgroundContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyCardSection(),
                  const Divider(
                    thickness: 0.8,
                    height: 40,
                    color: Color(0xffE8E8E8),
                  ),
                  const TransactionHistorySection(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          CustomBackgroundContainer(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  IncomeHeaderSection(),
                  SizedBox(
                    height: 16,
                  ),
                  ChartSection(),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}