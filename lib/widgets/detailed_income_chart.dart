import 'package:dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeSection = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeSection =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeSection == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeSection == 0 ? null : Colors.white),
          title: activeSection == 0 ? "Design service" : "40%",
          value: 40,
          radius: activeSection == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeSection == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeSection == 1 ? null : Colors.white),
          title: activeSection == 1 ? "Design product" : "25%",
          value: 25,
          radius: activeSection == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeSection == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeSection == 2 ? null : Colors.white),
          title: activeSection == 2 ? "Product royalti" : "20%",
          value: 20,
          radius: activeSection == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeSection == 3 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeSection == 3 ? null : Colors.white),
          title: activeSection == 3 ? "Other" : "22%",
          value: 22,
          radius: activeSection == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
