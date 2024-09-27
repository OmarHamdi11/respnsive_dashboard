import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/my_card_and_transaction_history.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistory(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
