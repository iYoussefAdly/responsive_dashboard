import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context)=> ResponsiveDashboard()));
}
class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder:DevicePreview.appBuilder,
      locale:DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:DashboardView(),
    );
  }
}