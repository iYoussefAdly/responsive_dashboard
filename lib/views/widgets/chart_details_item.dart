import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/models/details_item_model.dart';

class ChartDetailsItem extends StatelessWidget {
  const ChartDetailsItem({super.key, required this.detailsItemModel});
  final DetailsItemModel detailsItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: detailsItemModel.color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            detailsItemModel.title,
            style: AppStyles.styleRegular16,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(width: 12),
        Text(
          detailsItemModel.value,
          style: AppStyles.styleMediium16.copyWith(color: Color(0xff1F88C2)),
        ),
      ],
    );
  }
}
