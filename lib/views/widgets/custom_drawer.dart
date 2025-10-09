import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_data.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_view.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static final List<DrawerItemModel> items = [
    DrawerItemModel(image: AssetsData.imagesDashboard, name: 'Dashboard'),
    DrawerItemModel(image: AssetsData.imagesTransaction, name: "My Transaction"),
    DrawerItemModel(image: AssetsData.imagesStatistics, name: "Statistics"),
    DrawerItemModel(image: AssetsData.imagesWalletAccount, name: "Wallet Account"),
    DrawerItemModel(image: AssetsData.imagesInvestments, name: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: AssetsData.imagesAvatar1,
          ),
          SizedBox(height: 8),
          DrawerItemView(items: items)
        ],
      ),
    );
  }
}
