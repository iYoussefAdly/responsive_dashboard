import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemView extends StatelessWidget {
  const DrawerItemView({super.key, required this.items});
  final List<DrawerItemModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top:20),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}
