import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/my_card.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        Expanded(
          child: MyCard(),
        )
      ],
    );
  }
}
