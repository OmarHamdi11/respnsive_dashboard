import 'package:dashboard/models/item_details_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        itemDetailsModel.percent,
        style: AppStyles.styleMedium16.copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
