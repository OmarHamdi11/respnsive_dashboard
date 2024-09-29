import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}
