import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/chart_details.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';

class ChartSection extends StatefulWidget {
  const ChartSection({super.key});
  @override
  State<ChartSection> createState() => _ChartSectionState();
}
class _ChartSectionState extends State<ChartSection> {
  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
    return width>=SizeConfig.desktopBreakPoint&&width<1290?Row(
      children: [
        Expanded(
          child:DetailedIncomeChart()
        ),
      ],
    ):Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IncomeChart(),
        ),
        SizedBox(width: 40),
        Expanded(flex: 2, child: ChartDetails()),
      ],
    );
  }
}
