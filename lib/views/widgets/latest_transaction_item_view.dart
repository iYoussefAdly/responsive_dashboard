import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_data.dart';
import 'package:responsive_dashboard/models/latest_transaction_item_model.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionItemView extends StatelessWidget {
  const LatestTransactionItemView({super.key});
  static final List<LatestTransactionItemModel> items = [
    LatestTransactionItemModel(
      email: "Madraniadi20@gmail",
      title: 'Madrani Andi',
      image: AssetsData.imagesAvatar1,
    ),
    LatestTransactionItemModel(
      email: "Josh Nunito@gmail.com",
      title: 'Josua Nunito',
      image: AssetsData.imagesAvatar2,
    ),
    LatestTransactionItemModel(
      email: "Madraniadi20@gmail",
      title: 'Madrani Andi',
      image: AssetsData.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:items.map((e)=>IntrinsicWidth(child: UserInfoListTile(latestTransactionItemModel: e))).toList(),
      ),
    );
  }
}
