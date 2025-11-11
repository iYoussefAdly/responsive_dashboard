import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hintText: "Type item name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: "Item mount", hintText: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Add more details",
                  style: AppStyles.styleSemiBold18(context).copyWith(
                    color: Color(0xff4BB0E9),
                  ),
                ),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
