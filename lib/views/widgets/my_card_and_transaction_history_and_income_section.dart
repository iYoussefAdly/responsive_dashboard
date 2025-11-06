import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/chart_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dashboard/views/widgets/income_header_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_section.dart';

class MyCardAndTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncomeSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
                    MyCardSection(),
                    Divider(
                      thickness: 0.8,
                      height: 40,
                      color: Color(0xffE8E8E8),
                    ),
                    TransactionHistorySection(),
                  ],
                ),
              ),
            ),
            SizedBox(height:24),
            CustomBackgroundContainer(child: 
            Padding(
              padding: const EdgeInsets.only(top:20,left:20,right:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IncomeHeaderSection(),
                  SizedBox(
                    height: 16,
                  ),
                  ChartSection()
                ],
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
