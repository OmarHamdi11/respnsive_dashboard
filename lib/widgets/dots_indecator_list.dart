import 'package:dashboard/widgets/custom_dot_indecator.dart';
import 'package:flutter/material.dart';

class DotsIndecatorList extends StatelessWidget {
  const DotsIndecatorList({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndecator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
