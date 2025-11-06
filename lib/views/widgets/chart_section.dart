import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/chart_details.dart';

class ChartSection extends StatefulWidget {
  const ChartSection({super.key});
  @override
  State<ChartSection> createState() => _ChartSectionState();
}
class _ChartSectionState extends State<ChartSection> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: AspectRatio(
                aspectRatio: 1, child: PieChart(getChartData()))),
        SizedBox(width: 40,),
        Expanded(
          flex: 2,
          child: ChartDetails(),
        )
      ]);
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          activeIndex =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 40 : 30,
          showTitle: false,
          value: 40,
          color: Color(0xff208AC6),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 40 : 30,
          showTitle: false,
          value: 25,
          color: Color(0xff4CB1EA),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 40 : 30,
          showTitle: false,
          value: 20,
          color: Color(0xff063E5E),
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 40 : 30,
          showTitle: false,
          value: 22,
          color: Color(0xffDCD8C7),
        ),
      ],
    );
  }
}
