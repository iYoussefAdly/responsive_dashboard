import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

int activeIndex = -1;

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
