import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

int activeIndex = -1;

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeIndex==0?1.5:null,
          value:40,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==0?null:Colors.white),
          radius: activeIndex == 0 ? 40 : 30,
          title:activeIndex==0?"Desing service":'40%',
          color: Color(0xff208AC6),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex==1?1.5:null,
          value:25,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==1?null: Colors.white),
          radius: activeIndex == 1 ? 40 : 30,
          title:activeIndex==1?"Design product":"25%",
          color: Color(0xff4CB1EA),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex==2?1.5:null,
          value: 20,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==2?null:  Colors.white),
          radius: activeIndex == 2 ? 40 : 30,
          title:activeIndex==2?"Product royalti":"20%",
          color: Color(0xff063E5E),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex==3?1.5:null,
          value: 22,
          titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==3?null:  Colors.white),
          radius: activeIndex == 3 ? 40 : 30,
          title:activeIndex==3?"Other": "22%",
          color: Color(0xffDCD8C7),
        ),
      ],
    );
  }

}
