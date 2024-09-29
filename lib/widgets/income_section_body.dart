import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/detailed_income_chart.dart';
import 'package:dashboard/widgets/income_chart.dart';
import 'package:dashboard/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width <= 1760
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(20.0),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );

    // return Row(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Expanded(child: IncomeChart()),
    //     Expanded(flex: 2, child: IncomeDetails()),
    //   ],
    // );
  }
}
