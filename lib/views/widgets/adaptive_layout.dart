import 'package:flutter/material.dart';
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.deskTopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, deskTopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constrains.maxWidth >= 800 && constrains.maxWidth < 1300) {
          return tabletLayout(context);
        } else {
          return deskTopLayout(context);
        }
      },
    );
  }
}