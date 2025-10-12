import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemView extends StatefulWidget {
  const DrawerItemView({super.key, required this.items});
  final List<DrawerItemModel> items;

  @override
  State<DrawerItemView> createState() => _DrawerItemViewState();
}
class _DrawerItemViewState extends State<DrawerItemView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  activeIndex = index;
                }
              });
            },
            child: DrawerItem(
              drawerItemModel: widget.items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
