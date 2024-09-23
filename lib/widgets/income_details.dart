import 'package:dashboard/models/item_details_model.dart';
import 'package:dashboard/widgets/details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design service', percent: '40%'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design product', percent: '25%'),
    ItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', percent: '20%'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', percent: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return DetailsItem(itemDetailsModel: items[index]);
      },
    );
  }
}
