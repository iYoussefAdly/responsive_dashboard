import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/details_item_model.dart';
import 'package:responsive_dashboard/views/widgets/chart_details_item.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key});
  static final items = [
    DetailsItemModel(
      color: Color(0xff208BC6),
      title: "Design service",
      value: "40%",
    ),
    DetailsItemModel(
      color: Color(0xff4DB5EF),
      title: "Design product",
      value: "25%",
    ),
    DetailsItemModel(
      color: Color(0xff063F60),
      title: "Product royalti",
      value: "20%",
    ),
    DetailsItemModel(color: Color(0xffDEDAC9), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(items.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ChartDetailsItem(detailsItemModel: items[index]),
        );
      }),
    );
  }
}
