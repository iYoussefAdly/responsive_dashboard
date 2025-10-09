import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_data.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(title: 'Lekan Okeowo', subtitle: 'demo@gmail.com', image: AssetsData.imagesAvatar1)
        ],
      ),
    );
  }
}