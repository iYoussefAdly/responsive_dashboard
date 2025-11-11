import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.of(context).size.width < SizeConfig.tabletBreakPoint ? CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tabletBreakPoint
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        deskTopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
