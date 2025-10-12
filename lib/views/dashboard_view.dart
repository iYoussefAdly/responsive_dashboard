import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        deskTopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
