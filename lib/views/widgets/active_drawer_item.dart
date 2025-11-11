import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.image),
      title: Text(drawerItemModel.name, style: AppStyles.styleBold16(context)),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xff4EB7F2)),
      ),
    );
  }
}