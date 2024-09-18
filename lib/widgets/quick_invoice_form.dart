import 'package:dashboard/widgets/custom_button.dart';
import 'package:dashboard/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: 'Item name', hint: 'Type item name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                titleColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                backgroundColor: Color(0xFF4DB7F2),
                titleColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
